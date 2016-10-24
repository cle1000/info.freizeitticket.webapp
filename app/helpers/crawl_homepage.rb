include ApplicationHelper

module CrawlHomepage
	def scan_homepage
		begin
			snowWords = ["neu", "Neuschnee", "Neuschneemenge", "Neuschnee Berg", "Letzter Schneefall", "new", "Schneehöhe im Skigebiet:"]
			dateWords = ["Datum letzter Schneefall:", "Letzter Schneefall", "recent snowfall", "Stand:" , "AKTUELLE DATEN AUS DEM SKIGEBIET - "]
			specialChar = [":", "\"", ">", "<", "&gt;", "&lt;", "&nbsp;", /[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9][0-9][0-9]/ ]


			html = open(snow_page, :allow_redirections => :all).read
		
			best = 0
			html = html.gsub!(/\s+/, " ").strip
			snowWords.each do |fresh| 
				/(#{fresh}).*?([0-9][0-9]*)( )*?(cm)/.each_match html do |match|
					m = strip_tags(match[0])
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

			last = get_last_snow_report_from_homepage

			if !time.today? #not today
				best = 0 # not acatuall snow report available
			end

			if last && best == 0 	#there is an entry for today but the snowdate on the homepage was removed, so we delete the entry for the current day
				last.destroy! if last.today?
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

	def get_last_snow_report_from_homepage
		self.snow_reports.where(source: 'homepage').where("time >= ?", Time.zone.now.beginning_of_day).first
	end
end	