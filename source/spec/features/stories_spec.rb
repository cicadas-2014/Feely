describe "Stories" do
  before(:each) do
    Story.create( name: 'purple',
                  hex_code: '#551A8B'
                  color_id: 1)
  end

  describe "User can create a new story" do
    it "when redirected to the new stories page" do
      visit new_color_stories_path(color_id: create(:color).id)
      page.should have_field("story")
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
    it "when on the main feed page" do
      visit stories_all_path
      click("#purple")
      expect(response.status).to eq 200
    end
  end

end
