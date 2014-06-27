require 'spec_helper'
describe "Colors" do
  before(:each) do
    @colors << Color.new( name: 'purple',
                          hex_code: '#551A8B')
  end
  # let!(:purple) { create :purple }
  # let(:blue) { create :blue }
  describe "User can view colors"  do
    it "by visiting the homepage" do
      visit root_path
      expect(page).to have_css(".colors-container")
    end

    it "asks the user to choose a color" do
      visit root_path
      expect(page).to have_content("Choose a Color")
    end
  end

  describe "User can click on a color element that" do
    it "redirects to the story page" do
      visit root_path
      pending
      expect(response.status).to eq 200
    end
  end
end
