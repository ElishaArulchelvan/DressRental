class AddAvailableToDress < ActiveRecord::Migration
  def change
    add_column :dresses, :available, :boolean
  end
end
