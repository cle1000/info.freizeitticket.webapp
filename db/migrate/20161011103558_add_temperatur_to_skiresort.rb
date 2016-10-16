class AddTemperaturToSkiresort < ActiveRecord::Migration
  def change
    add_column :skiresorts, :temperatur, :string
  end
end
