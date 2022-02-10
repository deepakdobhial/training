class Product < ApplicationRecord
belongs_to :user, foreign_key: true
validetes :name, presence: true
validates :price, presence: true, numericality: true
end
