class CreateAvalancheRegions < ActiveRecord::Migration
  def change
    create_table :avalanche_regions do |t|
      t.belongs_to  :avalanche
      t.integer 	:region
      t.boolean 	:am
      t.boolean     :over_1800
      t.integer 	:danger_rate
      t.timestamps null: false
    end
  end
end
