require 'spec_helper'

describe ColorsController do
  context 'colors#index' do
    it "renders the root page" do
      get :index
      expect(response).to render_template(:index)
    end

  end

  context 'colors#show' do
    it 'render the show page for a single color' do
      get :show, :color_id => story.color_id, :id => story.id
      expect(response).to render_template(:show)
    end

    it 'assigns @stories to all stories of a color' do
      get :show, :color_id => story.color_id, :id => story.id
      expect(assigns(:stories)).to eq # not sure
    end

    it 'assigns @color to the color' do
      get :show, :color_id => story.color_id, :id => story.id
      expect(assigns(:stories)).to eq stories.first.color
    end

    it 'only displays a single color on the page' do
      pending
    end
  end
end
