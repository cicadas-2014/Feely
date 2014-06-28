require 'spec_helper'

describe ColorsController do
  context 'colors#index' do
    it "renders the root page" do
      get :index
      expect(response).to render_template(:index)
    end

  end

  context 'colors#show' do
    it 'render the show page' do
      get :show
      expect(response).to render_template(:show)
    end

    it 'assigns @stories to all stories of a color' do
      get :show, :color_id => touchy.color_id,
    end

    it 'assigns @color to the color' do
    end

    it 'only displays a single color on the page' do

    end
  end
end
