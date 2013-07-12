class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    "/dashboard"
  end
  def after_sign_up_path_for(resource)
    "/dashboard"
  end
  def after_update_path_for(resource)
    "/dashboard"
  end
  def redirect_logged_in
    if user_signed_in?
      redirect_to "/dashboard"
      return false
    end
  end

end
