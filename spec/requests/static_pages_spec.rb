require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'TwiBlog' " do
      visit '/static_pages/home'
      expect(page).to have_content('TwiBlog')
    end

    it "should have proper title" do
      visit '/static_pages/home'
      expect(page).to have_title("TwiBlog|Home")
    end

  end
  describe "Help Page" do
    it "should have the content 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have proper title" do
      visit '/static_pages/help'
      expect(page).to have_title("TwiBlog|Help")
    end
  end

  describe "About Page" do
    it "should have the content 'about' " do
      visit '/static_pages/about'
      expect(page).to have_content('about')
    end
    it "should have proper title" do
      visit '/static_pages/about'
      expect(page).to have_title("TwiBlog|About")
    end
  end
end
