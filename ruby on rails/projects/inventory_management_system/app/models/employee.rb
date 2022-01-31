class Employee < ApplicationRecord
  has_many :comments, as: :commentable
  validates :name, presence: {message: "Please Enter name"}, on: create
end
