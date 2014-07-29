require 'spec_helper'

describe "Top pages" do

	let(:base_title) { "FusionManiaバンド登録サイト" }

  describe "Home page" do
    it "should have the content 'Fusion Mania'" do
      visit '/'
      expect(page).to have_content("#{base_title}")
    end

    it "should have the base title" do
      visit '/'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/'
      expect(page).not_to have_title('| Home')
    end
  end

  

  describe "Contact page" do
    it "should have the content '連絡先'" do 
      visit '/top_pages/contact'
      expect(page).to have_content('連絡先')
    end

    it "should have the title 'Contact'" do
    	visit '/top_pages/contact'
    	expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
