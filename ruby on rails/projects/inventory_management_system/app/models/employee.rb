class Employee < ApplicationRecord
  has_many :comments, as: :commentable
  validates :name, presence: {message: "can't be blank"}
  validate  :dob_validate
  
  private
  def dob_validate
    age = ((Time.zone.now - self.date_of_birth.to_time) / (1.year.seconds)).to_i
    if age < 18
      self.errors.add :date_of_birth, "The age of a employee must be 18 or older"
    end
  end
    
end
