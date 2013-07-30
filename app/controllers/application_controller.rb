class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # Extend controller
  include Concerns::Authentication
  include Concerns::I18n

  protect_from_forgery with: :exception
end
