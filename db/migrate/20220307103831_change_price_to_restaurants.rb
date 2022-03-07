class ChangePriceToRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :price, :string
  end
end
