class MoviesController < ApplicationController
  def index
    @movies = if params[:genre] == "php"
                Movie.where(genre: Movie::PHP_GENRE_LIST)
              else
                Movie.where(genre: Movie::RAILS_GENRE_LIST)
              end
    @title = if params[:genre] == "php"
               "PHP 動画"
             else
               "Ruby/Rails 動画"
             end
  end
end
