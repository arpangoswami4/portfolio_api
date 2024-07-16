class TestimonialMailer < ApplicationMailer

  def testimonial_acknowledgement(testimonial)
    @testimonial = testimonial
    @testimonial_url = ENV['FRONTEND_APP_URL'] + "/testimonial"
    mail(to: @testimonial.email, subject: "Thanks for posting the testmonial" )
  end

end
