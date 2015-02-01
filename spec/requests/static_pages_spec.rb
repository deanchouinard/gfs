require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "/"
      response.status.should be(200)
    end
  end
  
  describe "Home page" do
    it "deliberate error" do
      visit "/"
      page.should have_content('foo')
    end
  end
end
