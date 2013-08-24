class AddExtraImageFieldsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :image_file_name, :string
    add_column :notes, :image_content_type, :string
    add_column :notes, :image_file_size, :integer
    add_column :notes, :image_updated_at, :datetime
  end
end
