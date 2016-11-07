include ApplicationHelper
include Facebook
include CrawlSocialMedia
include CrawlBergfex
include CrawlHomepage

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


	def scan_snow 
		scan_twitter if self.twitter
		scan_facebook if self.facebook
		scan_bergfex if self.bergfex
		scan_homepage if self.snow_page && !self.snow_page.empty?
	end

	def self.scan_all
		Skiresort.all.each do |r|
			puts "Scanning #{r.name}"
			r.scan_snow
		end
		if Time.now.hour == 8 && Time.now.min < 40 && Time.now.min  > 29
			Skiresort.generate_social_media_message
		end
		Skiresort.push 
	end

	def get_push_message
		last_push_time = self.last_push_time
		last_push_height = self.last_push_height
		sr = self.snow_report
		
		return '' if !sr.id
		return '' if sr.powder_alert
		return '' if sr.current_snow_height < 15

		if (!sr.push &&  #dont push again
			sr.time > 1.hour.ago && # fresh information
			sr.snow_height > 14 && ##think about pushing if snowheight is more than 14cm
				(
					last_push_time < 12.hours.ago || ##push again if last push is old enought
					sr.snow_height - last_push_height > 10 ##more snow comes
				)
			)
			self.last_push_time = Time.now
			self.last_push_height = sr.snow_height
			self.save!
			sr.push = true
			sr.save!
			return "#{self.name} #{sr.snow_height} cm, "
		end
		return ''
	end

	def self.push 
		pushstring = ''
		skiresorts = Skiresort.all.each {|s| s}
		skiresorts = skiresorts.sort_by{ |r| cmp(r.snow_report.current_snow_height, false) }
		skiresorts.each do |s| 
			pushstring += s.get_push_message
		end
		pushstring.strip!
		if pushstring != ''
			pushstring = pushstring[0, pushstring.length - 1]
		end
		pushstring = "Powderalarm: #{pushstring}"
		#send push
		email(pushstring)
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
			webcam.load
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

	def self.generate_social_media_message
		freshInfo = []
		Skiresort.all.each do |resort|
			if resort.snow_report && resort.snow_report.snow_height && resort.snow_report.snow_height > 9 && resort.snow_report.time > 16.hours.ago
				freshInfo << OpenStruct.new( 'id' => resort.id, 'snow_height' => resort.snow_report.snow_height )
			end
		end
		if freshInfo
			messages = Skiresort.getPostMessages(freshInfo)
			puts messages[:facebook_text]
			puts messages[:twitter_text]

			post(messages[:facebook_text], messages[:img])
			$twitter.update(messages[:twitter_text])
		end
	end

	def self.getPostMessages(infos)
		header = "❆❆ Powder Alarm ❆❆\n"
		footer = "❆❆\nInfos auf http://freizeitticket.info\n#powder_bot_2, #freizeitticket, #pow, #innsbruck"
		twitterText = ""
		facebookText = ""
		img = nil
		infos.sort_by{|e| e[:snow_height]}.each do |info|
			resort = Skiresort.find(info[:id])
			img = "https://freizeitticket.info#{resort.webcams.order(height: :desc).first.img}" if img.nil?
			twitterText += "❆ #{info[:snow_height]} cm @#{resort.twitter || resort.name.gsub(" ", "_")}\n"
			facebookText += "❆ #{info[:snow_height]} cm ##{resort.name.gsub(" ", "_")}\n"
		end

		twitterText = header + twitterText + footer
		facebookText = header + facebookText + footer

		return OpenStruct.new( 'facebook_text' => facebookText, 'twitter_text' => twitterText[0 .. 139], 'img' => img)
	end
end