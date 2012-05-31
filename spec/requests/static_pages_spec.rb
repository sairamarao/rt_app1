require 'spec_helper'

describe StaticPagesController do


	describe "GET 'home' " do

it "should be successful" do
	get '/static_pages/home'
	response.should be_success
	end

it "should have the right title" do
get 'static_pages/home'
response.body.should have_selector("title",:content =>"Ruby on Rails Tutorial Sample App | Home")
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
response.body.should have_selector("title",:content =>"Ruby on Rails Tutorial Sample App | Help")
end

end

describe "GET 'about' " do

it "should be successful" do
get '/static_pages/about'
response.should be_success
end

it "should have the right title" do
get 'static_pages/about'
response.body.should have_selector("title",:content =>"Ruby on Rails Tutorial Sample App | About")
end

end

end
