require 'spec_helper'

describe "StaticPages" do
    describe "Home page" do
    	it "should have the content 'Sample App'" do 
    		visit '/static_pages/home'
    		page.should have_content('Smoken Recipes')
    	end

    	it "should have the right title" do
    		visit '/static_pages/home'
    		page.should have_selector('title', :text => "Smoken Recipes | Home")
    	end
    end

    describe "Help page" do
    	it "should have the content 'Help'" do
    		visit '/static_pages/help'
    		page.should have_content('Help')
    	end

    	it "should have the right title" do
    		visit '/static_pages/help'
    		page.should have_selector('title', :text => "Smoken Recipes | Help")
    	end    	
    end

    describe "About page" do
    	it "should have the content 'About Us'" do
    		visit '/static_pages/about'
    		page.should have_content('About Us')
    	end

    	it "should have the right title" do
    		visit '/static_pages/about'
    		page.should have_selector('title', :text => "Smoken Recipes | About Us")
    	end
    end

    describe "Contact page" do
    	it "should have the content 'Contact Us" do
    		visit '/static_pages/contact'
    		page.should have_content('Contact')
    	end

    	it "should have the right title" do
    		visit '/static_pages/contact'
    		page.should have_selector('title', :text => "Smoken Recipes | Contact")
    	end
    end
end
