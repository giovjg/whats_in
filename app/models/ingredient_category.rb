class IngredientCategory < ApplicationRecord
  validates :name, presence: true
  has_many :ingredients
end
