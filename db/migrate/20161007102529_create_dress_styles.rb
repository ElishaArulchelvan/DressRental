class CreateDressStyles < ActiveRecord::Migration
  def change
    create_table :dress_styles do |t|
      t.string :style

      t.timestamps null: false
    end
  end
end
