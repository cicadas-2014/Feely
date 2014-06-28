class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def show
    @stories = Story.where(color_id: params[:id])
    @color = @stories.first.color
  end

end
