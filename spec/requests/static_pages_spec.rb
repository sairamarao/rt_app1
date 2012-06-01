require 'spec_helper'

describe StaticPagesController do

	before(:each)do
	@base_title = "Ruby on Rails Tutorial Sample App"
	end

	describe "GET 'home' " do

		it "should be successful" do
		get '/static_pages/home'
		response.should be_success
		end

		it "should have the right title" do
		get '/static_pages/home'
		response.body.should have_selector("title",
					           :content =>"#{@base_title} | Home")
		end

		it "should have a non-blank body" do
		get 'static_pages/home'
		response.body.should_not =~ /<body>\s*<\/body>/
		end
	end

	describe "GET 'help' " do

		it "should be successful" do
		get '/static_pages/help'
		response.should be_success
		end

		it "should have the right title" do
		get 'static_pages/help'
		response.body.should have_selector("title",
						   :content =>"#{@base_title} | Help")
		end

	end

	describe "GET 'about' " do

		it "should be successful" do
		get '/static_pages/about'
		response.should be_success
		end

		it "should have the right title" do
		get 'static_pages/about'
		response.body.should have_selector("title",
						   :content =>"#{@base_title} | About")
		end

	end

end
