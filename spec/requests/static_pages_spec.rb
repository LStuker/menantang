require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Menantang" do
      visit '/static_pages/home'
      page.should have_content('Menantang')
    end
  end

	describe "Help page" do
	  it "should have the content 'Frequently Asked Questions" do
	    visit '/static_pages/help'
	    page.should have_content('Frequently Asked Questions')
	  end
	end

	describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end


end
