class User < ApplicationRecord
  has_many :products
  validates :name, 
            presence: true, 
            uniqueness: true,
            length: { minimum: 5, maximum: 20 },
            format: { with: /\A[a-z0-9]+\Z/, message: "Username should contain only lowercase characters"}
  validates :password, 
            presence: true,
            confirmation: true, 
            format: {with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])(?=.*[0-9]).{6,}$\Z/, message: "must be contain atleast 6 characters and include one number,one special character, one capital letter and one small letter."}
  validates :password_confirmation, presence: true
  validates :date_of_birth, presence: true
  validates :terms_of_services, acceptance: { message: "must be accepted"}
  validate  :age_verify

  private
  def age_verify
    if !self.date_of_birth.nil?
      age = ((Time.zone.now - self.date_of_birth.to_time) / (1.year.seconds)).to_i
      if age < 13
        self.errors.add :date_of_birth, ": User should be over 13 years old"
      end
    end
  end

end
