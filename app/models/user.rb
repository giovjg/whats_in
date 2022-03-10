class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :allergies
  has_many :ingredients, through: :allergies
  has_many :favourites
  has_many :restaurants, through: :favourites
  has_one_attached :photo
  accepts_nested_attributes_for :allergies, allow_destroy: true
end
