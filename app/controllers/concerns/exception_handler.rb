# app/controllers/concerns/exception_handler.rb
module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: {message: e.message}, status: 404
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: {message: e.message}, status: 422
    end
  end
end