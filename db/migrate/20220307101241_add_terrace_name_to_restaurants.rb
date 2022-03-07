class AddTerraceNameToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :terrace, :boolean
  end
end
