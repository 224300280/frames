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
    	response.should have_selector('title', :content => "Sign up")
  	end
  	
  	it "should have the right links on the layout" do
    	
    	visit root_path
    	
    	click_link "About Frames"
    	response.should have_selector('title', :content => "About Us")
    
    	click_link "Sign up"
    	response.should have_selector('title', :content => "Sign up")
    	
    	click_link "Site Map"
		response.should have_selector('title', :content => "Site Map")
    
    	click_link "Sign in"
    	response.should have_selector('title', :content => "Sign in")
    	
  	end
  	
describe "when not signed in" do

    it "should have a signin link" do
      	visit root_path
      	response.should have_selector("a", :href => signin_path,
                                         :content => "Sign in")
    end
end

describe "when signed in" do

    before(:each) do
      	@user = Factory(:user)
      	visit signin_path
      	fill_in :name,    :with => @user.name
      	fill_in :password, :with => @user.password
      	click_button
    end

    it "should have a signout link" do
      	visit root_path
      	response.should have_selector("a", :href => signout_path,
        	                            	:content => "Sign out")
    end
  

   
end
  	
  	
  
end