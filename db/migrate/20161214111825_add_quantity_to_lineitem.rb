class AddQuantityToLineitem < ActiveRecord::Migration
  def change
    add_column :lineitems, :quantity, :integer
  end
end
