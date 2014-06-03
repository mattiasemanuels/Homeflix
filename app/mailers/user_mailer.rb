class UserMailer < ActionMailer::Base
  	default from: "noreply.homeflix@gmail.com"
  
  	#send a user mail
	def welcome_email(user, email)
		@user = user
		mail(to: email, subject: "Welcome to Homeflix")
	end

end
