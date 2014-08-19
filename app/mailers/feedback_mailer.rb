class FeedbackMailer < ActionMailer::Base
  default from: "ctfsample@gmail.com"

  def welcome_email(feedback)
  	
    @feedback = feedback
    mail(to: @feedback.email, subject: 'Thank you for your time')
  end

  
end
