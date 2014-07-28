require 'spec_helper'

describe "Top pages" do

  describe "Home page" do
    it "should have the content 'Fusion Mania'" do
      visit '/'
      expect(page).to have_content('FusionManiaバンド登録サイト')
    end

    it "should have the title 'Home'" do
      visit '/'
      expect(page).to have_title("FusionManiaバンド登録サイト | Home")
    end
  end

  describe "About page" do
    it "should have the content 'このサイトについて'" do 
      visit '/top_pages/about'
      expect(page).to have_content('このサイトについて')
    end

    it "should have the title 'About'" do
    	visit '/top_pages/about'
    	expect(page).to have_title("FusionManiaバンド登録サイト | About")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/top_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/top_pages/help'
      expect(page).to have_title("FusionManiaバンド登録サイト | Help")
    end
  end
end