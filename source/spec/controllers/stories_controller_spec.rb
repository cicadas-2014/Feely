require 'spec_helper'
require 'pry'
describe StoriesController do
  let!(:touchy) { create :story }
  let!(:color) { create :color }

  context 'stories#index' do
    it "renders the index view" do
      get :index
      expect(response).to render_template(:index)
    end

    it "grabs all the stories and displays them" do
      pending
      # get :index
      # expect()
    end
  end

  context "stories#create" do
    it "creates a story with valid params" do
      expect {
        post :create, anecdote: touchy.anecdote, color_id: touchy.color_id
        expect(response).to redirect_to color_path(touchy.color_id)
      }.to change { Story.count }.by(1)
    end

    it "doesn't create a story with invalid params" do
      expect {
        pending("add validations to model before testing this")
        expect(response.status).to eq 422
      }.to_not change { Story.count }
    end
  end

  context "stories#show" do
    it "is successful" do
      get :show, :color_id => touchy.color.id, :id => touchy.id
      expect(response).to be_success
    end

    it "assigns @color to color" do
      get :show, :color_id => touchy.color.id, :id => touchy.id
      expect(assigns(:color)).to eq touchy.color
    end

    it "assigns @story to story" do
      get :show, :color_id => touchy.color.id, :id => touchy.id
      expect(assigns(:stories)).to eq [touchy]
    end
  end
end
