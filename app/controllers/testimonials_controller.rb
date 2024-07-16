class TestimonialsController < ApplicationController

  def create
    testimonial = Testimonial.new(testimonial_params)
    response_hash = {}
    status = :created
    if testimonial.save
      if testimonial.email.present?
        TestimonialMailer.testimonial_acknowledgement(testimonial).deliver_now
      end
      response_hash = {success: true}
    else
      response_hash = { errors: testimonial.errors, success: false }
      status= :bad_request
    end
  end

  def index
    testimonials = Testimonial.all
    render json :testimonials, status: :ok
  end

  private
  def testimonial_params
    params.require(:testimonial).permit(:name, :photo, :headline, :quote)
  end

end
