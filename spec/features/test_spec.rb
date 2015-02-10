require 'rails_helper'

describe "StaticPages" do
  describe "Visit /" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/"
      expect(page).to have_content('Spree')
    end
  end
  
  describe "Home page" do
    it "deliberate error" do
      visit "/"
      expect(page).to have_content('foo')
    end
  end
end
