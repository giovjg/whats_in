class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :website, presence: true
  has_one_attached :photo
end
