class Department < ApplicationRecord
  validates :name, presence: {message: "can't be blank"}
  before_save :capitalize_name
  around_save :remove_whitespaces
  after_save :upcase_name
  
  def capitalize_name
    self.name = name.titleize
  end

  def remove_whitespaces
    self.name.strip!
    yield
  end

  def upcase_name
    self.name.upcase!
  end

end
