class VisitorsController < ApplicationController

  def create
    visitor = Visitor.new(visitor_params)
    response_hash = {}
    status = :created
    if visitor.save
      VisitorMailer.message_acknowledgement(visitor).deliver_now
      response_hash = { success: true }
    else
      response_hash = { errors: visitor.errors, success: false }
      status= :bad_request
    end
    render json: response_hash, status: status
  end

  private

  def visitor_params
    params.require(:visitor).permit(:first_name, :last_name, :email, :phone_number, :message)
  end

end

