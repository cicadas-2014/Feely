describe "Stories" do
  let!(:story) { create :story }
  # describe "User can view their own story" do
  #   it "by submitting their story" do
  #   end
  # end

  describe "User can view all stories" do
    it "when redirected to the stories page" do
      visit stories_all_path
      expect(page).to have_content(story.anecdote)
    end
  end
end
