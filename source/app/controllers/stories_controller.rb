class StoriesController < ApplicationController
  before_action :load_color

  def new
    @story = Story.new
  end

  def create
    p params
    p params[:story]
    p "*" * 40
    p build_params
    p "*" * 40
    @story = @color.stories.build build_params
    if @story.save
      puts "I made it in the story.save block"
      redirect_to color_path(@story.color)
    else
      render :partial => 'shared/errors', :locals => { :object => @story }, :status => :unprocessable_entity
    end
  end

  def show
    @stories = @color.stories
  end

  private
  def load_color
    @color = Color.find params[:color_id]
  end

  def build_params
    params.require(:story).permit(:anecdote)
  end

end
