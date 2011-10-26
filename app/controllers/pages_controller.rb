class PagesController < ApplicationController
  
  def home
    @title = "Frames"
  end

  def map
    @title = "Site Map"
  end

  def about
    @title = "About Us"
  end

end
