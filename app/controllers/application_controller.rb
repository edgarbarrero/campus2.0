class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def authenticate_payment
    return if current_user.payment?
    redirect_to payment_user_path(current_user)
  end

  # Overwriting devise method
  def after_inactive_sign_up_path_for(_resource)
    new_user_confirmation_path
  end
end
