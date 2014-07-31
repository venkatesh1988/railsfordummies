class WelcomeMailer < ActionMailer::Base
  default from: "venkatesh.dhanasekar@gmail.com"

  def welcome_mail(newcontact)
  	@user = newcontact
  	@url = "http://0.0.0.0:3000/phonebooks/index"
  	mail(to: @user.email,subject: 'Welcome to My Awesome site')
  end
end
