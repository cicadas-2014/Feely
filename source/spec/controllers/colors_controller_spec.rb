describe ColorsController do
  describe '#index' do
    it "renders the root page" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#show' do
    context 'the user selects the color from the root page' do
      it 'assigns the color' do
        pending
      end
    end
  end
end
