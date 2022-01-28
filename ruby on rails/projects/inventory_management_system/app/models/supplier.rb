class Supplier < ApplicationRecord
  has_many :comments, as: :commentable
end
