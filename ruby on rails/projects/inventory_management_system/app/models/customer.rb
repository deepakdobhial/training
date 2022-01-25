class Customer < ApplicationRecord
  validates :email, confirmation: true
  validates :gender, length: { is: 1}
end
