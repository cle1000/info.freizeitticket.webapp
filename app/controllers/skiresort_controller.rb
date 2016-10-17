include ApplicationHelper

class SkiresortController < ApplicationController
  def data
  	@skiresorts = Skiresort.all.each { |r | r }
  	@skiresorts = @skiresorts.sort_by{ |r| cmp(r.snow_report.current_snow_height, false) + cmp(r.snow_report.time, false) + cmp(r.id) }  
  end
  
  def detail
  	@resort = Skiresort.find(params[:id])
  	@snowreports = Skiresort.find(params[:id]).snow_reports.order(:time).map do |sr|
  		OpenStruct.new(
  			'snow_text' => sr.text,
    		'source_name' => sr.source,
    		'link_text' => sr.get_link_text,
    		'source' => sr.link,
    		'date' => time_ago_in_words(sr.time)
    	)
  	end
  end
end
