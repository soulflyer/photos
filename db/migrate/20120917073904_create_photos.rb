class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :fullsize
      t.text :original
      t.text :thumb
      t.integer :shoot_id
      t.text :watermarked

      t.timestamps
    end
  end
end
