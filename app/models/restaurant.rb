class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  has_many :dishes
  has_many :ingredients
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
