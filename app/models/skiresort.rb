include SkiresortHelper

class Skiresort < ActiveRecord::Base

	has_many 			:webcams

	has_many            :snow_reports

	attr_accessor       :avalanche_level, :snow_report

	after_initialize	:set_avalanche_level, :set_snow_info


	def set_avalanche_level
		a = Avalanche.order("time").last
		if !a.nil?
			if a.time > 24.hours.ago
				@avalanche_level = a.avalanche_regions.where(region: self.avalanche_region).order(danger_rate: :desc).first.danger_rate
			end
		end
	end

	def set_snow_info
		sr = self.snow_reports.order("time").last
		@snow_report = sr.nil? ? SnowReport.new() : sr
	end



	def scan_homepage
		begin
			html = open(snow_page, :allow_redirections => :all).read

			snowWords = ["neu", "Neuschnee", "Neuschneemenge", "Neuschnee Berg", "Letzter Schneefall", "new", "Schneehöhe im Skigebiet:"]
			dateWords = ["Datum letzter Schneefall:", "Letzter Schneefall", "recent snowfall", "Stand:" , "AKTUELLE DATEN AUS DEM SKIGEBIET - "]

			specialChar = [":", "\"", ">", "<", "&gt;", "&lt;", "&nbsp;", /[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9][0-9][0-9]/ ]

			best = 0

			html = html.gsub!(/\s+/, " ").strip

			snowWords.each do |fresh| 
				/(#{fresh}).*?([0-9][0-9]*)( )*?(cm)/.each_match html do |match|
					m = ActionController::Base.helpers.strip_tags(match[0])
					specialChar.each { |sc| m.gsub!(sc, "")}
					m1 = /(#{fresh})( )*([0-9][0-9]*)( )*?(cm)/.match(m)
					if not m1.nil?
						if m1[3].to_i > best
							best = m1[3].to_i
						end
					end
				end
			end

			time = Time.now

			dateWords.each do |dateWord|
				date = /(#{dateWord}).*?([0-9][0-9]\.[0-9][0-9]\.[0-9][0-9][0-9][0-9])/.match html
				date = /(#{dateWord}).*?([A-Z][a-z][a-z] [0-9][0-9]*, [0-9][0-9][0-9][0-9])/.match html if date.nil?
				if date
					time = Time.parse(date[2].to_s)
					break
				end
			end

			last = getLastSnowReportFromHomepage

			if time < Time.zone.now.beginning_of_day #not today
				best = 0 # not acatuall snow report available
			end

			if last && best == 0 	#there is an entry for today but the snowdate on the homepage was removed, so we delete the entry for the current day
				last.destroy! if last.time > Time.zone.now.beginning_of_day	
			elsif last && best > 0 #there is an active entry for today so we update your entry
				last.snow_height = best
				last.save!
			elsif last.nil? && best > 0 #there is no entry but on the homepage there is -> make a new
				sr = SnowReport.new(time: Time.now, link: snow_page, source: 'homepage', skiresort:self, snow_height: best)
				sr.save!
			end
		rescue => e
			Rails.logger.error { "Encountered an error when scaning homepage for #{self.name}: #{e.message} #{e.backtrace.join("\n")}" }
		end
	end

	def scan_facebook
		begin
			json = JSON.parse open("https://graph.facebook.com/#{facebook}/posts?access_token=#{$fb_app_id}|#{$fb_app_secret}&limit=5").read
			json["data"].each do |post|
				snowInfo = getSnowInfo(post["message"]) 
				if snowInfo
					t = Time.parse(post["created_time"])
					if !SnowReport.all.exists?(time: t, source:"facebook", skiresort: self)
						sr = SnowReport.new(snowInfo.merge(skiresort: self, time: Time.parse(post["created_time"]),source:'facebook',  link: "https://www.facebook.com/#{facebook}/posts/#{post['id'].split('_')[1]}"))
						sr.save!
					end
				end
			end
		rescue => e
			Rails.logger.error { "Encountered an error when scaning facebook for #{self.name}: #{e.message} #{e.backtrace.join("\n")}" }
		end
	end

	def scan_twitter
		begin
		$twitter.user_timeline(twitter).take(5).collect do |tweet|
			snowInfo = getSnowInfo(tweet.text) 
			if snowInfo
				if !SnowReport.all.exists?(time: tweet.created_at, source:"twitter", skiresort: self)
					sr = SnowReport.new(snowInfo.merge(skiresort: self, time: tweet.created_at, source:'twitter', link: "https://twitter.com/#{twitter}/status/#{tweet.id}"))
					sr.save!
				end
			end
			
		end
		rescue => e
			Rails.logger.error { "Encountered an error when scaning twitter for #{self.name}: #{e.message} #{e.backtrace.join("\n")}" }
		end
	end

	def scan_bergfex
		begin
			html = open("http://www.bergfex.at/#{bergfex}/schneebericht/").read
			#index = html.index('Pisten und Lifte')
			#html = html[0 .. index] if index
			html = html.gsub!(/\s+/, " ").strip #ActionController::Base.helpers.strip_tags()
			height = /(neu: )([0-9][0-9]*)( )*?(cm)/.match(html)
			freshinfo = /(Letzter Schneefall Region<\/dt> <dd>Heute)/.match(html)
			time = Time.now

			if height && freshinfo
				snow_height = height[2].to_i
				heute = /(Heute)(,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)
				gestern = /(Gestern)(,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)
				date = /[0-9][0-9].[0-9][0-9](.,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)

				time = Time.now
				if !heute.nil?
					time = Time.parse((heute[0].gsub!('Heute, ', '')) , time)
				elsif !gestern.nil?
					time = Time.parse((gestern[0].gsub!('Gestern, ', '') ), time - 24.hours)
				elsif !date.nil?
					time = Time.parse(date[0].gsub!(',', Time.now.year.to_s) )	
				end

				if !SnowReport.all.exists?(time: time, source:"bergfex", skiresort: self)
					sr = SnowReport.new(source: "bergfex", time: time, snow_height: snow_height, link: "http://www.bergfex.at/#{bergfex}/schneebericht/")
					self.snow_reports << sr
					self.save!
				end
			end
		rescue => e
			Rails.logger.error { "Encountered an error when scaning bergfex for #{self.name}:#{e.message} #{e.backtrace.join("\n")}" }
		end

	end

	def scan_snow 
		scan_twitter if self.twitter
		scan_facebook if self.facebook
		scan_bergfex if self.bergfex
		scan_homepage if self.snow_page
	end

	
	def getLastSnowReportFromHomepage
		self.snow_reports.where(source: 'homepage').where("time >= ?", Time.zone.now.beginning_of_day).first
	end

	def getSnowInfo (text)
		if not text.nil?
			text = text.downcase
			snow_words_pos = ["fresh", "powder ", "still", "snowing", "schneit", "new", "neuschnee", "pow", "tiefschnee", "neu", "über nacht", "over night"]
			snow_words_alert = ["powder alarm", "powderalarm", "pow pow"]
			snow_words_neg = ["schneehöhe", "snow height", "gestern"]
			match = /([0-9][0-9]*)( )*cm/.match(text)
			if not match.nil?
				snow_words_neg.each do |n|
					if n.in? text
						return
					end
				end
				snow_words_pos.each do |p|
					if p.in? text
						return {snow_height: match[1].to_i}
					end
				end
			else
				snow_words_alert.each do |a|
					if a.in? text 
						return {powder_alert: true};
					end
				end
			end
		end
		return nil
	end


	def self.scan_all
		Skiresort.all.each do |r|
			puts "Scanning #{r.name}"
			r.scan_snow
		end
	end

	def self.load_webcams
		Skiresort.all.each do |resort|
			resort.load_webcam_images
		end
	end

	def self.load_weathers
		Skiresort.all.each do |resort|
			resort.load_weather
		end
	end

	def load_webcam_images
		self.webcams.each do |webcam| 
			webcam.load_image
		end
	end

	def load_weather
		if !self.weather.nil?
			html = open("http://www.schneehoehen.de/widgets/details/widget_schneebericht/" + self.weather.to_s + "?theme=blue&amp;language=de&amp;size=250&amp;weather=true").read
			temp = /[-]*[0-9][0-9]*°C/.match(html)
			if !temp.nil?
				self.temperatur = temp[0]
				self.save
			end
		end
	end


end
