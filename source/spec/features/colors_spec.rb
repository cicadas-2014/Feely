require 'spec_helper'
describe "Colors" do
  let!(:color) { Color.new(name: 'white', hexcode: 'FFFFFF') }

  describe "User can view colors"  do
    it "by visiting the homepage" do
      visit root_path
      expect(page).to have_content within(:css, "#white")
    end

    it "displays all colors in database" do
    end
  end

  describe "User can click on a color element" do
  end
end
