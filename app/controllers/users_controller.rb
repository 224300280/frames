class UsersController < ApplicationController

  	before_filter :authenticate, :only => [:index, :edit, :update,:show]
  	before_filter :test, :only => [:new]
  	before_filter :correct_user, :only => [:edit, :update]

  	def index
		@title = "Spotlight"
		@users = User.paginate(:page => params[:page], :per_page => 5)
  	end


  	def show
		@user = User.find(params[:id])
		@title = @user.name
		@assets = @user.assets.paginate(:page => params[:page], :per_page => 15)
		@asset = Asset.new if signed_in?
		
  	end

  	def new
		@user = User.new
		@title = "Sign up"
		
  	end
  
  	def destroy
    	User.find(params[:id]).destroy
    	flash[:success] = "User destroyed."
    	redirect_to users_path
  	end

  	def create
		@user = User.new(params[:user])
		if @user.save
			sign_in @user
			flash[:success] = "Welcome to Frames!"
			redirect_to @user
		else
	   		@title = "Sign up"
	   		render 'new'
		end
  	end

  	def edit
		@title = "Edit Profile"
		@user = User.find(params[:id])
  	end

  	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
	   		flash[:success] = "Profile Updated"
	   		redirect_to @user
		else
	   		@title = "Edit user"
	   		render 'edit'
		end
  	end
  	
  
  
  	private
  
  	#def authenticate
		#deny_access unless signed_in?
  	#end

  	def test
		if signed_in?
			access
		end
  	end
  	

  	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_path) unless current_user?(@user)
  	end

	def admin_user
      redirect_to(root_path) unless current_user.admin?
    end


end
