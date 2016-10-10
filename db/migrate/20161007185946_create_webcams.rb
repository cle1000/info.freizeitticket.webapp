class CreateWebcams < ActiveRecord::Migration
  def change
    create_table :webcams do |t|
      t.belongs_to      :skiresort
      t.string          :name
      t.integer         :feratel_id
      t.integer         :height
      t.string          :wms
      t.string          :image
      t.string          :panomax_area
      t.string          :panomax_webcam
      t.integer         :panomax_id
      t.timestamps  null: false
    end
  end
end
