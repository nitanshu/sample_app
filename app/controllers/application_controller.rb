class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

   def checkguest
	redirect_to root_path if signed_in?
end
end
