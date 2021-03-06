class SnowReport < ActiveRecord::Base
	belongs_to 			:skiresort
	attr_accessor       :text, :current_snow_height
	after_initialize	:set_snow_info, :adjust_time_homepage
	before_save 		:check_last_snow_report

	def set_snow_info
		if time
			if time > 12.hours.ago
				@text = powder_alert ? "POW" : "#{snow_height} cm"
				@current_snow_height = 1 if powder_alert
				@current_snow_height = snow_height if snow_height
			else
				@current_snow_height = 0
				@text = time.time_ago_in_short_words
			end
		end
	end

	def adjust_time_homepage
		if self.source == "homepage" && self.time.hour != 7 && !(self.time > Time.now.beginning_of_day)
			self.time = self.time.change({ hour: 7, min: 30 })  
			self.save!
		end
	end

	def check_last_snow_report
		if self.source == 'homepage' && !self.push
			SnowReport.skip_callback(:initialize, :after, :set_snow_info)
			SnowReport.skip_callback(:initialize, :after, :adjust_time_homepage)
			last = SnowReport.where(source:'homepage', skiresort: self.skiresort).where("time >= ?", 24.hours.ago).order(:time).last
			SnowReport.set_callback(:initialize, :after, :set_snow_info)
			SnowReport.set_callback(:initialize, :after, :adjust_time_homepage)
			return if !last
			puts last.snow_height
			if last.snow_height == self.snow_height
				self.push = true
			end
		end
	end

	def get_link_text
		link_text = "zum Post" if source == "facebook"
		link_text = "zum Tweet" if source == "twitter"
		link_text = "zur Homepage" if source == "homepage"
		link_text = "zu Bergfex" if source == "bergfex"
		link_text
	end

	def get_content_text
		content_text = "gefunden auf Facebook" if source == "facebook"
		content_text = "gefunden auf Twitter" if source == "twitter"
		content_text = "gefunden auf der Homepage" if source == "homepage"
		content_text = "gefunden auf Bergfex" if source == "bergfex"
		content_text
	end
	
end
