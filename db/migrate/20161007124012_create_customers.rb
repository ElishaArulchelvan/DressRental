class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phoneNumber
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
