module CrawlBergfex
		def scan_bergfex
		begin
			html = open("http://www.bergfex.at/#{bergfex}/schneebericht/").read
			#index = html.index('Pisten und Lifte')
			#html = html[0 .. index] if index
			html = html.gsub!(/\s+/, " ").strip #ActionController::Base.helpers.strip_tags()
			height = /(neu: )([0-9][0-9]*)( )*?(cm)/.match(html)
			freshinfo = /(Letzter Schneefall Region<\/dt> <dd>Heute)/.match(html)
			time = Time.now

			freshinfo = true

			if height && freshinfo
				snow_height = height[2].to_i
				heute = /(Heute)(,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)
				gestern = /(Gestern)(,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)
				date = /[0-9][0-9].[0-9][0-9](.,)( )[0-9][0-9](:)[0-9][0-9]/.match(html)

				time = Time.now
				if !heute.nil?
					time = Time.parse((heute[0].gsub!('Heute, ', '')) , time)
				elsif !gestern.nil?
					time = Time.parse((gestern[0].gsub!('Gestern, ', '') ), time - 24.hours)
				elsif !date.nil?
					time = Time.parse(date[0].gsub!(',', Time.now.year.to_s) )	
				end
				sr_bergfex_today = SnowReport.where(source: "bergfex", skiresort_id: self.id).where("time >= ?", 6.hours.ago).order(:time, :updated_at).last
				if sr_bergfex_today && sr_bergfex_today.snow_height == snow_height
					sr_bergfex_today.time = time
					sr_bergfex_today.snow_height == snow_height
					sr_bergfex_today.save!
				else
					sr = SnowReport.new(source: "bergfex", time: time, snow_height: snow_height, link: "http://www.bergfex.at/#{bergfex}/schneebericht/")
					self.snow_reports << sr
					self.save!
				end
			end
		rescue => e
			Rails.logger.error { "Encountered an error when scaning bergfex for #{self.name}:#{e.message} #{e.backtrace.join("\n")}" }
		end

	end
end