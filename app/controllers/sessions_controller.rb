class SessionsController < ApplicationController
  
  before_filter :test, :only => [:new]


  def new
	@title = "Sign in"
  end

  def create
	user = User.authenticate(params[:session][:name], params[:session][:password])
	if user.nil?
	  flash.now[:error] = "Invalid name/password combination"
	  @title = "Sign in"
	  render 'new'	
	else
	  sign_in user
	  redirect_back_or user

	end
  end


  def destroy
  	sign_out
	redirect_to root_path
  end


private

  def test
	if signed_in?
	     access
	end
  end

  
end
