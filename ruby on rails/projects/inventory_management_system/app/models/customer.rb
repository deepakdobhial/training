class Customer < ApplicationRecord
  validates :email, confirmation: true
end
