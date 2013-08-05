class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :image
      t.string :image_caption
      t.text :note

      t.timestamps
    end
  end
end
