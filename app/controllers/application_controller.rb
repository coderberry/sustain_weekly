class ApplicationController < ActionController::Base
  protected

  def current_user
    return nil unless session[:current_user_id].present?
    User.find_by(id: session[:current_user_id])
  end
  helper_method :current_user

  def current_user=(user)
    session[:current_user_id] = user.id
  end
end
