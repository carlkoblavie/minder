# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    render 'application/index'
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name company_id])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name company_id])
  end
end
