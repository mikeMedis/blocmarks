class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'The Medis Group, welcomes you to Blocmarks.')
  end

  def receive(email)
    @user = email.sender
    @topic = email.subject
    @url = params["body-plain"]
  end
end
