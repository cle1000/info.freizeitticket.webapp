class AddErrorToWebcams < ActiveRecord::Migration
  def change
  	add_column :webcams, :error, :boolean, :default => false
  end
end
