describe "Stories" do
  # describe "User can view their own story" do
  #   it "by submitting their story" do
  #   end
  # end
  describe "User can create a new story" do
    it "when redirected to the new stories page" do
      visit new_color_stories_path(color_id: create(:color).id)
      page.should have_field("story")
    end
  end

  describe "User can view all stories" do
  let!(:story) { create :story }
    it "when redirected to the stories page" do
      visit stories_all_path
      expect(page).to have_content(story.anecdote)
    end
  end
end
