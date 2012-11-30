class AddPublicAndPrivateToShoots < ActiveRecord::Migration
  def change
    add_column :shoots, :public, :string
    add_column :shoots, :private, :string
  end
end
