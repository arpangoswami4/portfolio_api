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
      status = :bad_request
    end
    render json: response_hash, status: status
  end

  def index
    testimonials = Testimonial.all
    render json: testimonials, status: :ok
  end

  private
  def testimonial_params
    params.permit(:name, :headline, :quote, :email, :relation, :avatar)
  end

end
