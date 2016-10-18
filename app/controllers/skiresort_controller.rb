include ApplicationHelper

class SkiresortController < ApplicationController
  def data
  	@skiresorts = Skiresort.all.each { |r | r }
  	@skiresorts = @skiresorts.sort_by{ |r| cmp(r.snow_report.current_snow_height, false) + cmp(r.snow_report.time, false) + cmp(r.id) }  
  end
  
  def detail
  	@resort = Skiresort.find(params[:id])
  	@snowreports = Skiresort.find(params[:id]).snow_reports.order(time: :desc).map do |sr|
  		OpenStruct.new(
  			'snow_text' => sr.powder_alert ? "❆ POWDER ALARM ❆" : "❆ #{sr.snow_height} cm",
    		'source_name' => sr.source,
    		'link_text' => sr.get_link_text,
        'content_text' => sr.get_content_text,
    		'source' => sr.link,
    		'date' => time_ago_in_words(sr.time)
    	)
  	end
  end
end
