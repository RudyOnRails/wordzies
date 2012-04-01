class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in

  private

  def logged_in
    @current_user ||= (User.find(session[:user_id]) if session[:user_id])
  end
  
end
