include ActionView::Helpers::DateHelper

class SnowReport < ActiveRecord::Base
	belongs_to 			:skiresort

	attr_accessor       :text, :current_snow_height

	after_initialize	:set_snow_info

	def set_snow_info
		if time
			if self.time > 12.hours.ago
				@text = self.powder_alert ? "POW" : "#{self.snow_height} cm"
				@current_snow_height = 1 if self.powder_alert
				@current_snow_height = self.snow_height if self.snow_height
			else
				@current_snow_height = 0
				@text = time_ago_in_words(self.time)
			end
		end
	end

	def get_link_text
		link_text = "zum Post" if source == "facebook"
		link_text = "zum Tweet" if source == "twitter"
		link_text = "zur Homepage" if source == "homepage"
		link_text = "zum Bergfex Seite" if source == "bergfex"
		link_text
	end
	
end
