class ConfirmationsController < Devise::ConfirmationsController
  protected

  def after_confirmation_path_for(_resource_name, resource)
    payment_user_path(resource)
  end
end
