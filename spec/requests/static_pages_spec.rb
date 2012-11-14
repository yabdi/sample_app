require 'spec_helper'

describe "Static Pages" do
	describe "Home page" do
		it "Should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content ('Sample App')
		end
	end

end
