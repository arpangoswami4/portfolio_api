class VisitorsMailer < ApplicationMailer

  def message_acknowledgement(visitor)
    @visitor = visitor
    @home_url = ENV['FRONTEND_APP_URL']
    @testimonial_url = "https://www.google.co.in/"
    mail(to: @visitor.email, subject: "Thanks for Messaging and Viewing my Portfolio" )
  end

end
