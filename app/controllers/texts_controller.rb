class TextsController < ApplicationController
  def index
    @texts = Text.includes(:read_progresses).search_by_genre(params[:genre])
  end

  def show
    @text = Text.find(params[:id])
  end
end
