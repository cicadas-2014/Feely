class StoriesController < ApplicationController
  # before_action :load_color

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new( anecdote: params[:story][:anecdote].capitalize!,
                        color_id: params[:color_id] )
    if @story.save
      redirect_to stories_all_path
    else
      render :partial => 'shared/errors', :locals => { :object => @story }, :status => :unprocessable_entity
    end
  end

  def show
    @color = Color.find(params[:color_id])
    @stories = @color.stories
  end

  private
  def load_color
    @color = Color.find params[:color_id]
  end

end
