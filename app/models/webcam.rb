require 'open-uri'

class Webcam < ActiveRecord::Base
	attr_accessor       :src, :img_thumb, :img
	belongs_to 			:skiresort
	
	after_initialize	:set_webcam_source

	def set_webcam_source
		if isFeratelCam
			@src = 'http://webtv.feratel.com/webtv/?cam=' + self.feratel_id.to_s + '&t=9&design=v3&c0=1&lg=en&pg=5B5E9E02-B5B4-4A6D-80D1-212DBAE53C39&s=0'
			self.image = 'http://wtvpict.feratel.com/picture/42/' + self.feratel_id.to_s + '.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3'
		elsif isPanomax
			@src = 'http://' + self.panomax_area.to_s + '.panomax.com/' + self.panomax_webcam.to_s
			self.image = 'https://panodata2.panomax.com/cams/' + self.panomax_id.to_s + '/recent_optimized.jpg'
			self.wide = true
		elsif isWMSCam
			@src = 'http://'+ self.wms + '.it-wms.com'
			self.image = 'http://' + self.wms + '.it-wms.com/panorama1_raw.jpg'
			self.wide = true
		else
			@src = self.image
		end
	end

	def isFeratelCam
		not self.feratel_id.nil?
	end

	def isWMSCam
		not self.wms.nil?
	end

	def isPanomax
		not self.panomax_id.nil?
	end

	def load_image
		image = MiniMagick::Image.open(self.image)
		image.format 'jpg'

		#image.resize '400x400'
		#image.write 'app/assets/images/webcams/image/'+ self.id.to_s + '.jpg'
		
		if self.wide
			image.resize '2000x230'
			image.crop '365x230+0+0'
		else
			image.resize '365x230!'
		end
		image.write 'app/assets/images/webcams/thumb/'+ self.id.to_s + '.jpg'
	end
end
