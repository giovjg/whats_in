class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  has_many :dishes
  has_many :ingredients
  has_one_attached :photo
end
