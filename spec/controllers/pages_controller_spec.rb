require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Frames")
    end
  end

  describe "GET 'map'" do
    it "should be successful" do
      get 'map'
      response.should be_success
    end

    it "should have the right title" do
      get 'map'
      response.should have_selector("title",
                        :content =>
                          "Site Map")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content =>
                          "About Us")
    end
  end
end