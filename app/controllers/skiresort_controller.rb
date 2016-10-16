include ApplicationHelper

class SkiresortController < ApplicationController
  def data
  	@skiresorts = Skiresort.all.each { |r | r }
  	@skiresorts = @skiresorts.sort_by{ |r| cmp(r.snow_report.current_snow_height, false) + cmp(r.snow_report.time, false) + cmp(r.id) }  
  end
  
  def detail
  	@resort = Skiresort.find(params[:id])
  end
end
