class Customer < ApplicationRecord
  has_many :comments, as: :commentable
  validates :email, confirmation: true, uniqueness: true
  validates :gender, length: { is: 1}
  validates :mobile_no, presence: true, uniqueness: true
  after_validation :capitalize_name
  before_save :generate_otp
  after_save :registration_message
    
  private
  def capitalize_name
    self.name = name.downcase.titleize
  end

  private
  def generate_otp
    @otp = (('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a).shuffle.first(6).join
    puts "OTP: #{ @otp}"
  end

  private
  def registration_message
    puts "successfully registered"
  end
    
end
