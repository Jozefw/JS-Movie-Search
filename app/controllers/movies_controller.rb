class MoviesController < ApplicationController

  def index
  end

  def create
    @movie = Movie.create (movie_params)
      respond_to do |format|
      format.json {render json: @movie}
      end
  end

  private
  def movie_params
    params.require(:movie).permit(:title)
  end

end
