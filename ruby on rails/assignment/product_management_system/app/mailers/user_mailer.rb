class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    # @url  = 'http://www.gmail.com'
    mail(to: @user.email, subject: "Hi! This is a testing mail")
  end
end
