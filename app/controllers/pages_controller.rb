class PagesController < ApplicationController
  def home
  @title = "Frames"

  end

  def about
  @title = "About Us"
  
  end

  def map
  @title = "Site Map"
  
  end

end
