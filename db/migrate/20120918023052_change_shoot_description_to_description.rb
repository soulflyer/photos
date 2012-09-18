class ChangeShootDescriptionToDescription < ActiveRecord::Migration
  def change
    rename_column :shoots, :shoot_description, :description
    rename_column :shoots, :shoot_date, :date
  end
end
