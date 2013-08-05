class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :author
      t.string :content_type

      t.binary :data, :limit => 1.megabyte
      t.timestamps
    end
  end
end
