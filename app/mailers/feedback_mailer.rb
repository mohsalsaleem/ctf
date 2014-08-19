class FeedbackMailer < ActionMailer::Base
  default from: "ctfsample@gmail.com"

  def welcome_email(feedback)
  	@id=feed_id
    @feedback = feedback
    mail(to: @feedback.email, subject: 'Thank you for your time')
  end

  def feed_id
  	static i=1000;
  	i=i+1;
end
