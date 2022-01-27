class Customer < ApplicationRecord
  validates :email, confirmation: true, absence: true, uniqueness: true
  validates :gender, length: { is: 1}
  validates :mobile_no, presence: true, uniqueness: true
end
