class CreateSkiresorts < ActiveRecord::Migration
  def change
    create_table :skiresorts do |t|
      t.string :name
      t.string :twitter
      t.string :facebook
      t.string :bergfex
      t.string :snow_page
      t.string :bergfex
      t.string :homepage
      t.string :avalanche_region
      t.string :weather

      t.timestamps null: false
    end
  end
end
