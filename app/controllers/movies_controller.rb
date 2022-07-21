class MoviesController < ApplicationController
  PER_PAGE = 12

  def index
    @movies = Movie.genre(params).page(params[:page]).per(PER_PAGE)
  end
end
