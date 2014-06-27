require 'spec_helper'
describe "Colors" do
  let(:purple) { create :purple }
  let(:blue) { create :blue }
  describe "User can view colors"  do
    it "by visiting the homepage" do
      visit root_path
      expect(page).to have_css("#purple")
      expect(page).to have_css("#orange")
      expect(page).to have_css("#black")
    end

    it "asks the user to choose a color" do
      visit root_path
      expect(page).to have_content("Choose a Color")
    end
  end

  describe "User can click on a color element" do
  end
end
