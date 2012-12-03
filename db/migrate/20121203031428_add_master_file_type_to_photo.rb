class AddMasterFileTypeToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :master_file_type, :string
  end
end
