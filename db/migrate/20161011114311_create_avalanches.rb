class CreateAvalanches < ActiveRecord::Migration
  def change
    create_table :avalanches do |t|
      t.timestamp  :time
      t.string :author
      t.text :comment
      t.text :highlight
      t.text :synopsis_comment
      t.text :snowpack_structure_comment
      t.text :travel_advisary_comment

      t.timestamps null: false
    end
  end
end
