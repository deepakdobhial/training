class Category < ApplicationRecord
  has_many :products
  has_many :brands, through: :products
  validates :name, presence: true, uniqueness: true, length: { in: 2..30 }
  before_create :remove_whitespaces
  after_create :capitalize_name
  before_update :remove_whitespaces
  after_update :capitalize_name

  private 
  def remove_whitespaces
    self.name = name.strip
  end

  private
  def capitalize_name
    self.name = name.downcase.titleize
  end
   
end