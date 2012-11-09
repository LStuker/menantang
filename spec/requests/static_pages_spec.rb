require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Menantang" do
      visit '/static_pages/home'
      page.should have_content('Menantang')
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
      :text => "Home | Menantang")
    end
  end

	describe "Help page" do

	  it "should have the content 'Frequently Asked Questions" do
	    visit '/static_pages/help'
	    page.should have_content('Frequently Asked Questions')
	  end

	  it "should have the right title" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
      	:text => "Help | Menantang")
    end
	end

	describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
 

	 it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title',
	    	:text => "About Us | Menantang")
	  end
	end
end
