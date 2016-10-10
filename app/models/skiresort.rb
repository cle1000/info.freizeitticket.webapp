class Skiresort < ActiveRecord::Base

	has_many 			:webcams

	def self.load_all
		Skiresort.all.each do |resort|
			resort.load_webcam_images
		end
	end

	def load_webcam_images
		self.webcams.each do |webcam| 
			webcam.load_image
		end
	end


end
