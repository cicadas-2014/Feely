class StoriesController < ApplicationController
  before_action :load_color

  def new
    @story = Story.new
  end

  def create
    p params
    @story = @color.stories.build params[:story]
    if @story.save
      redirect_to color_path(@story.color.id)
    else
      render :partial => 'shared/errors', :locals => { :object => @story }, :status => :unprocessable_entity
    end
  end

  def show
    @stories = @color.stories
  end

  def story

  end

  private
  def load_color
    @color = Color.find params[:color_id]
  end

end
