class AssetsController < ApplicationController
  
  #before_filter :authenticate, :only => [:create, :destroy, :show]
  #before_filter :authorized_user, :only => :destroy
 
  def show
    @asset = Asset.find(params[:id])
    @title = "Your Photo Number #{@asset.id}"
	end
		
  
  def create
    @asset  = current_user.assets.build(params[:asset])
        if @asset.save
          #flash[:success] = "Micropost created!"
          redirect_to current_user
        else
          #flash[:fail] = "Micropost Not created!"
          redirect_to current_user
        end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to current_user
  end
  
  

    
    private

      def authorized_user
        @asset = current_user.assets.find_by_id(params[:id])
        redirect_to root_path
      end
      
      
end

