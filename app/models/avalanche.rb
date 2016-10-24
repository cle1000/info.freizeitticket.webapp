class Avalanche < ActiveRecord::Base
	has_many 			:avalanche_regions

	def self.load
		xml = Nokogiri::Slop(open('https://apps.tirol.gv.at/lwd/produkte/LLBTirol.xml').read.gsub! 'caaml:', '')
		time =  Time.parse(xml.Bulletin.metaDataProperty.MetaData.dateTimeReport.content)
		
		if !Avalanche.all.exists?(time: time)
			a = Avalanche.new()
			a.time = time
			a.author = xml.Bulletin.metaDataProperty.MetaData.comment.content
			a.highlight = xml.Bulletin.bulletinResultsOf.BulletinMeasurements.highlights.content
			a.comment = xml.Bulletin.bulletinResultsOf.BulletinMeasurements.comment.content
			a.synopsis_comment = xml.Bulletin.bulletinResultsOf.BulletinMeasurements.wxSynopsisComment.content
			a.snowpack_structure_comment = xml.Bulletin.bulletinResultsOf.BulletinMeasurements.snowpackStructureComment.content
			a.travel_advisary_comment = xml.Bulletin.bulletinResultsOf.BulletinMeasurements.travelAdvisoryComment.content
			

			count = 0
			xml.Bulletin.bulletinResultsOf.BulletinMeasurements.dangerRatings.DangerRating.drop(5).each do |dr|
				ar = AvalancheRegion.new()
				ar.region = dr.locRef['xlink:href'].sub 'AT7R', ''
				ar.am = (count % 2 == 0)
				ar.over_1800 = ((count % 4) < 2)
				ar.danger_rate =  dr.mainValue.content
				a.avalanche_regions << ar
				count = count + 1
			end
			a.save!
		end
	end

end
