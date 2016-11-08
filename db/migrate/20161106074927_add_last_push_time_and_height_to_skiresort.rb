class AddLastPushTimeAndHeightToSkiresort < ActiveRecord::Migration
  def change
  	add_column :skiresorts, :last_push_time, :timestamp, :default => 1.year.ago
  	add_column :skiresorts, :last_push_height, :integer, :default => 0
  end
end
