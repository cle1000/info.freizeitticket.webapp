require 'open-uri'

class Webcam < ActiveRecord::Base
	attr_accessor       :src, :img_thumb, :img
	belongs_to 			:skiresort
	
	after_initialize	:set_webcam_source

	def feratelCam? 
		feratel_id 
	end

	def WMSCam? 
		wms 
	end

	def panomax? 
		panomax_id 
	end

	def set_webcam_source
		if feratelCam?
			@src = "http://webtv.feratel.com/webtv/?cam=#{feratel_id.to_s}&t=9&design=v3&c0=1&lg=en&pg=5B5E9E02-B5B4-4A6D-80D1-212DBAE53C39&s=0"
			self.image = "http://wtvpict.feratel.com/picture/42/#{feratel_id.to_s}.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3"
		elsif panomax?
			@src = "http://#{panomax_area.to_s}.panomax.com/#{panomax_webcam.to_s}"
			self.image = "https://panodata2.panomax.com/cams/#{panomax_id.to_s}/recent_optimized.jpg"
			wide = true
		elsif WMSCam?
			@src = "http://#{wms}.it-wms.com"
			self.image = "http://#{wms}.it-wms.com/panorama1_raw.jpg"
			wide = true
		else
			@src = self.image
		end
		@img_thumb = "/images/webcams/thumb/#{id.to_s}.jpg"
		@img ="/images/webcams/image/#{id.to_s}.jpg"
	end
	
	def load
		emptyfile = false;
		begin
			img = MiniMagick::Image.open(self.image)
			emtyfile = true if !img
			img = optimize(img)

			img.format 'jpg'

			if wide
				img.resize '2500x700'
			else
				img.resize '700x700'
			end
			img.write 'public/images/webcams/image/'+ id.to_s + '.jpg'
			
			if wide
				img.resize '2000x230'
				img.crop '365x230+0+0'
			end
			img.resize '365x230!'
			img.write 'public/images/webcams/thumb/'+ id.to_s + '.jpg'
			setError(false)
		rescue => e
			Rails.logger.error { "Encountered an error when loading image for #{name}:#{e.message} #{e.backtrace.join("\n")}" }
			if (emtyfile) 
				self.setError(true)
			end
		end
	end

	def setError(b)
     	puts self.name
		if self.error != b
			self.error = b
			self.save!
		end
	end

	def optimize (img)
      return img unless img.mime_type.match /image\/jpeg/
      img.strip
      img.combine_options do |c|
          c.quality "80"
          c.depth "8"
          c.interlace "plane"
      end
      img
	end
end
