class Employee < ApplicationRecord
  has_many :comments, as: :commentable
end
