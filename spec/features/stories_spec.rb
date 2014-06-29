require 'spec_helper'

describe "Stories" do
  before(:each) do
    Color.create( name: 'orange',
                  hex_code: '#FFFFFF')
  end

describe "User can create a new story" do
    let!(:story) { create :story }
    it "when redirected to the new stories page" do
      visit new_color_stories_path(color_id: story.color_id)
      expect(page).to have_content("Anecdote")
    end
  end

  describe "User can view all stories on the feed" do
  let!(:story) { create :story }
    it "when redirected to the stories page" do
      visit stories_all_path
      expect(page).to have_content(story.anecdote)
    end
  end

  describe "User can click on a color to visit the color's feed" do
    let!(:color) { Color.create(name: 'orange', hex_code: '#FFFFFF') }
    let!(:story) { Story.create(anecdote: 'abc', color_id: color.id) }
    it "when on the main feed page" do
      visit stories_all_path(color_id: color.id)
      click_link "colors/#{color.id}"
      expect(page).to have_content story.color.name.capitalize
    end
  end

end
