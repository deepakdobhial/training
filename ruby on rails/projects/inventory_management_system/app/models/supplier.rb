class Supplier < ApplicationRecord
  has_many :comments, as: :commentable
  validates :email, allow_nil: true
  validates :company_name, allow_blank: true
end
