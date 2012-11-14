require 'spec_helper'

describe "Static pages" do
	describe "Home page" do
		it "Should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content ('Sample App')
		end

		it "Should have the right title" do
			visit '/static_pages/home'
			page.should have_selector("title", 
							:text => "Ruby on Rails Sample App | Home")
		end		
	end

	describe "Help page" do
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content ('Help')
		end

		it "Should have the right title" do
			visit '/static_pages/help'
			page.should have_selector("title", 
							:text => "Ruby on Rails Sample App | Help")
		end			
	end

	describe "About page" do
		it "Should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content ('About Us')
		end

		it "Should have the right title" do
			visit '/static_pages/about'
			page.should have_selector("title", 
						:text => "Ruby on Rails Sample App | About Us")
		end			
	end

	describe "Contact page" do
		it "Should have the h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "Should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector("title", 
						:text => "Ruby on Rails Sample App | Contact")
		end			
	end	
end
