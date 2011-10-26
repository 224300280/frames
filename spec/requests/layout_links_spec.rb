require 'spec_helper'

describe "LayoutLinks" do

  	it "should have a Home page at '/'" do
    	get '/'
    	response.should have_selector('title', :content => "Frames")
  	end

  	it "should have a Contact page at '/map'" do
    	get '/map'
	    response.should have_selector('title', :content => "Site Map")
	end

	it "should have an About page at '/about'" do
	    get '/about'
    	response.should have_selector('title', :content => "About Us")
	end
  
	it "should have a signup page at '/signup'" do
   		get '/signup'
    	response.should have_selector('title', :content => "Sign Up")
  	end
end