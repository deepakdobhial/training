class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  after_validation :change_to_downcase

  private
  def change_to_downcase
    self.name = self.name.downcase
  end

end
