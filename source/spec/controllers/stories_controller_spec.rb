require 'spec_helper'

describe StoriesController do
  let!(:color) { create :color }
  let!(:touchy) { Story.create( anecdote: Faker::Lorem.sentence, color_id: color.id) }
  let!(:story) { create :story }
  let!(:stories) { [story, create(:story)] }

  context 'stories#index' do
    it "renders the index view" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns @stories to Story.all" do
      get :index
      expect(assigns(:stories)).to eq(Story.all)
    end
  end

  context "stories#new" do
    it "renders the stories form/anecdote page" do
      get :new, :color_id => color.id
      expect(response).to render_template(:new)
    end

    it "assigns an empty @story instance for the form_for object" do
      get :new, :color_id => color.id
      expect(assigns(:story)).to eq story
    end
  end

  context "stories#create" do
    it "creates a story with valid params" do
      expect {
        post :create, anecdote: touchy.anecdote, color_id: touchy.color_id
      }.to change { Story.count }.by(1)
    end

    it "redirects to all stories with valid params" do
      post :create, anecdote: touchy.anecdote, color_id: touchy.color_id
      expect(response).to redirect_to stories_all_path
    end

    it "doesn't redirect to all stories with invalid params" do
      post :create, anecdote: nil, color_id: touchy.color_id
      expect(response).to render_template :'shared/_errors'
    end

    it "doesn't create a story with invalid params" do
      expect {
        pending("add validations to model before testing this")
        expect(response.status).to eq 422
      }.to_not change { Story.count }
    end
  end
  # context "stories#show" do
  #   it "is successful" do
  #     get :show, :color_id => touchy.color_id, :id => touchy.id
  #     expect(response).to be_success
  #   end

  #   it "assigns @color to color" do
  #     get :show, :color_id => touchy.color_id, :id => touchy.id
  #     expect(assigns(:color)).to eq touchy.color
  #   end

  #   it "assigns @story to story" do
  #     get :show, :color_id => touchy.color_id, :id => touchy.id
  #     expect(assigns(:stories)).to eq [touchy]
  #   end
  # end
end
