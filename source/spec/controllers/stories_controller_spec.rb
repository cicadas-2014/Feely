require 'spec_helper'

describe StoriesController do
  let!(:touchy) { create :story }

  context "get#create" do
    it "creates a story with valid params" do
      expect {
        post :create, :color_id => touchy.color.id, :id => touchy.id
        expect(response).to be_success
      }.to change { Story.count }.by(1)
    end

    it "doesn't create a story with invalid params" do
      expect {
        post :create, :color_id => touchy.color.id, :id => touchy.id
        expect(response.status).to eq 422
      }.to_not change { Story.count }
    end
  end

  context "get#show" do
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
