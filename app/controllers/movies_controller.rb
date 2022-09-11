class MoviesController < ApplicationController
  PER_PAGE = 12

  def index
    @movies = Movie.search_by_genre(params[:genre]).page(params[:page]).per(PER_PAGE)
  end
end
