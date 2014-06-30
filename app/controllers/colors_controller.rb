class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def show
    @color = Color.find params[:id]
    @stories = Story.where(color_id: @color.id)
  end

end
# 18
