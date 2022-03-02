class Ingredient < ApplicationRecord
  belongs_to :ingredient_category
  validates :name, presence: true
end
