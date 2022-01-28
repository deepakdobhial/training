class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :brands
  validates :price, comparison: {greater_than: 0}, numericality: true
  validates :name, :brand_id, :category_id, presence: true
end
