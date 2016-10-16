include ActionView::Helpers::DateHelper

class SnowReport < ActiveRecord::Base
	belongs_to 			:skiresort

	attr_accessor       :text, :current_snow_height

	after_initialize	:set_snow_info

	def set_snow_info
		if self.time
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
	
end
