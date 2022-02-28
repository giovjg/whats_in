class AddColumnsToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :category, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :telephone, :string
    add_column :restaurants, :rating, :float
    add_column :restaurants, :price, :float
    add_column :restaurants, :wifi, :boolean
    add_column :restaurants, :start_time, :integer
    add_column :restaurants, :end_time, :integer
    add_column :restaurants, :adaptability, :boolean
    add_column :restaurants, :name, :string
  end
end
