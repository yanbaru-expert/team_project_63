class MoviesController < ApplicationController
  def index
    @movies = Movie.genre(params)
  end
end
