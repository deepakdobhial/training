class Category < ApplicationRecord
  has_many :products
  has_many :brands, through: :products
  validates :name, presence: true, uniqueness: true
end