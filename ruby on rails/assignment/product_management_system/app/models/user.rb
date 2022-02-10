class User < ApplicationRecord
  has_many :products
  validates :user, presence: true, uniqueness: true
  validates :password, presence: true
  validates :date_of_birth, presence: true
end
