class Product < ApplicationRecord
  belongs_to :category
  validates :price, comparison: {greater_than: 0}, numericality: true
  validates :name, :brand_id, :category_id, presence: true
end
