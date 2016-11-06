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
			Skiresort.generate_social_media_message()
		end
	end

	def get_push_message
		last_push_time = self.last_push_time
		last_push_height = self.last_push_height
		sr = self.snow_report

		if (!sr.push &&  #dont push again
			sr.current_snow_height > 14 && ##think about pushing if snowheight is more than 14cm
				(
					last_push_time < 12.hours.ago || ##push again if last push is old enought
					sr.current_snow_height - last_push_height > 10 ##more snow comes
				)
			)
			self.last_push_time = Time.now
			self.last_push_height = sr.current_snow_height
			self.save!
			sr.push = true
			sr.save!
			return "#{self.name} #{sr.current_snow_height} cm, "
		end
		return ''
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
end