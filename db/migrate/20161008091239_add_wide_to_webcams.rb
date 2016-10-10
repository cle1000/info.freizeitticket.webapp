class AddWideToWebcams < ActiveRecord::Migration
  def change
  	add_column :webcams, :wide, :boolean, default: false
  end
end
