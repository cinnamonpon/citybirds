class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def index
  	 @curr_user = User.where(id: session[:user_id]).first
  end

  def upload
  	
  end
  protect_from_forgery with: :exception

 
end