require 'spec_helper'  # ~> LoadError: cannot load such file -- spec_helper

describe ColorsController do
  let!(:touchy) { create :story }
  let!(:stories) { [touchy, create(:story)] }

  context 'colors#index' do
    it "renders the root page" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context 'colors#show' do

    it 'render the show page' do
      get :show, :id => touchy.color.id
      expect(response).to render_template(:show)
    end

    # it 'assigns @stories to all stories of a color' do
    #   get :show, :id => touchy.color.id
    #   expect(assigns(:stories)).to eq Story.all
    # end

    it 'assigns @color to the color' do
      p "i'm touchy"
      p touchy.color
      p "i'm touchy"
      get :show, :id => touchy.color_id
      expect(assigns(:color)).to eq touchy.color
    end

    # it 'only displays a single color on the page' do

    # end
  end
end

# ~> LoadError
# ~> cannot load such file -- spec_helper
# ~>
# ~> /Users/apprentice/.rbenv/versions/2.0.0-p353/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:53:in `require'
# ~> /Users/apprentice/.rbenv/versions/2.0.0-p353/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:53:in `require'
# ~> /Users/apprentice/Desktop/Feely/spec/controllers/colors_controller_spec.rb:1:in `<main>'
