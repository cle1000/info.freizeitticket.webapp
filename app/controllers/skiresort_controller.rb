class SkiresortController < ApplicationController
  def data
  	@skiresorts = Skiresort.all
  	@skiresorts.each do |resort|
  		resort.webcams.each do |webcam|
  			webcam.img_thumb = ActionController::Base.helpers.asset_path('webcams/thumb/'+ webcam.id.to_s + '.jpg')
  			webcam.img = ActionController::Base.helpers.asset_path('webcams/image/'+ webcam.id.to_s + '.jpg')
  		end
  	end 
  end
end
