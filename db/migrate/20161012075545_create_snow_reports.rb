class CreateSnowReports < ActiveRecord::Migration
  def change
    create_table :snow_reports do |t|
      t.belongs_to      :skiresort
      t.timestamp       :time
      t.integer         :snow_height
      t.boolean         :powder_alert
      t.string          :source
      t.string          :link
      t.string          :html
      t.boolean         :push

      t.timestamps null: false
    end
  end
end
