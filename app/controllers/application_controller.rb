class ApplicationController < ActionController::Base
  # before_action :authorized
  helper_method :current_user
  helper_method :logged_in?
  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id]) if session[:current_user_id]
  end
def logged_in?
  !current_user.nil?  
end
  protect_from_forgery with: :null_session
end
