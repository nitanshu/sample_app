class SessionsController < ApplicationController
	before_filter :checkguest, only: :new
def new
end
def create
user = User.find_by_email(params[:session][:email])
if user && user.authenticate(params[:session][:password])
	#handling rememeber me
	if params[:rememeber_me]
		cookies.permanent[:remember_token] = user.remember_token
	else
	cookies[:remember_token] = user.remember_token
	end
	
# Sign the user in and redirect to the user's show page.
sign_in user 
redirect_back_or user
# Not quite right!


else
flash.now[:error] = 'Invalid email/password combination' # Not quite right!
render 'new'
end
end

def destroy
cookies.delete(:remember_token)
redirect_to root_path, :notice => "Logged out!"
#sign_out
#redirect_to root_path
end
end