class Time
	def time_ago_in_short_words
		text = ""
		diff = ((Time.new - self)/3600).round
		text = "#{diff} h" if (diff < 24)
		diff = (diff/24.0).round
		text = "#{diff} Tag" if (diff == 1)
		text = "#{diff} Tage" if (diff >= 2)
		text
	end

	def today?
		self > Time.now.beginning_of_day
	end
end