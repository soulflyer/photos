class CreateShoots < ActiveRecord::Migration
  def change
    create_table :shoots do |t|
      t.string :name
      t.datetime :shoot_date
      t.text :shoot_description
      t.string :original_name

      t.timestamps
    end
  end
end
