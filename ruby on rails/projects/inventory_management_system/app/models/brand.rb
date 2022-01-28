class Brand < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :categories, through: :products
  validates :name, presence: true, uniqueness: true
end
