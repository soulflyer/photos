class SimplifyPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :name, :string
    remove_column :photos, :fullsize, :original, :thumb, :watermarked
  end
end
