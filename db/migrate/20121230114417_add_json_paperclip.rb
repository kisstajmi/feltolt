class AddJsonPaperclip < ActiveRecord::Migration
  def up
  	add_column :users, :json_file_name,    :string
    add_column :users, :josn_content_type, :string
    add_column :users, :json_file_size,    :integer
    add_column :users, :json_updated_at,   :datetime
  end

  def down
 		remove_column :users, :josn_file_name
    remove_column :users, :josn_content_type
    remove_column :users, :josn_file_size
    remove_column :users, :josn_updated_at
  end
end
