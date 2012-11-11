require 'spec_helper'

describe "Static Pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Menantang') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

	describe "Help page" do
    before { visit help_path }

	  it { should have_selector( 'h1', text: 'Frequently Asked Questions' )} 
  	it { should have_selector('title', text: full_title('Help')) }
	end

	describe "About page" do
    before { visit about_path }

    it { should have_selector( 'h1', text: 'About' )} 
    it { should have_selector('title', text: full_title('About Us')) }
	end

  describe "Terms page" do
    before { visit terms_path }

    it { should have_selector( 'h1', text: 'Terms of Service' ) }
    it { should have_content( 'Date of last revision' ) }
    it { should have_selector('title', text: full_title('Terms')) }
  end

  describe "Privacy page" do
    before { visit privacy_path }

    it { should have_selector( 'h1', text: 'Privacy Policy' ) }
    it { should have_content( 'Date of last revision' ) }
    it { should have_selector('title', text: full_title('Privacy')) }
  end

end
