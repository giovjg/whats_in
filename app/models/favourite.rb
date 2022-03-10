class Favourite < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :restaurant, uniqueness: { scope: :user }
end
