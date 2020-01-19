class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :user_login, only: [:welcome]

  def welcome 
    # redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end 

  def current_user 
    session[:name]
  end 

  private 

  def user_login 
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end 
end
