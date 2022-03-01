class Ingredient < ApplicationRecord
  belongs_to :IngredientCategory
  validates :name, presence: true
end
