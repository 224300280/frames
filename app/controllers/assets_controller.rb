class AssetsController < ApplicationController
  
  before_filter :authenticate, :only => [:create, :destroy]
 
 @@Fuck = "screwed"
 
  def show
    @asset = Asset.find(params[:id])
    @title = "Your Photo Number #{@asset.id}"
	end
		
  
  def create
    @asset  = current_user.assets.build(params[:asset])
        if @asset.save
          #flash[:success] = "Micropost created!"
          @feed_items = []
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
  
  
end

