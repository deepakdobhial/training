class Product < ApplicationRecord
  belongs_to :category
  validates :price, comparison: {greater_than: 0}
end
