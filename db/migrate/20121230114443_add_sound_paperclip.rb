class AddSoundPaperclip < ActiveRecord::Migration
  def up
  	add_column :users, :sound_file_name,    :string
    add_column :users, :sound_content_type, :string
    add_column :users, :sound_file_size,    :integer
    add_column :users, :sound_updated_at,   :datetime
  end

  def down
  	remove_column :users, :sound_file_name
    remove_column :users, :sound_content_type
    remove_column :users, :sound_file_size
    remove_column :users, :sound_updated_at
  end
end
