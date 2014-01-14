class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

   def checkguest
	redirect_to root_path if signed_in?
   end

   def current_user
   	@current_user ||= User.find_by_remember_token!(cookies[:remember_token]) if cookies[:remember_token]
   end
end

