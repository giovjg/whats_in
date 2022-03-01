class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :ingredients, through: :dish_ingredients
  has_one_attached :photo
  validates :name, presence: true, uniqueness: { scope: Restaurant }
end
