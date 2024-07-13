class ApplicationController < ActionController::API
  before_action :authorize_request

  def authorize_request
    if !request.headers['Authorization'] || request.headers['Authorization'].split(" ").last != ENV["API_KEY"]
      render json: { errors: 'Unauthorized' }, status: :unauthorized
    end
  end
end
