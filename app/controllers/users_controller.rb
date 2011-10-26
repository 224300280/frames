class UsersController < ApplicationController
  
  	def new
  		@title = "Register for a Frames account"
	end
  
  	def show
    	@user = User.find(params[:id])
    	@title = @user.name
  	end

end
