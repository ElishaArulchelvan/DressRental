class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :colour
      t.string :size
      t.integer :price
      t.string :image
      t.integer :dressStyle_id

      t.timestamps null: false
    end
  end
end
