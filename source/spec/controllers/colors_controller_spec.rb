describe ColorsControllers do
  let!(:color) { create :color }

  context "get#show" do
    it "is successful" do
      get :show, :color_id => color.id
      expect(response).to be_success
    end

    it "assigns @color to color" do
      get :show, :color_id => color.id
      expect(assign(:color)).to eq color
    end
    # setup { get :show }

    # expect(response).to redirect_to('/colors/:id')
  end
end
