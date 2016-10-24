module CrawlSocialMedia

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

end