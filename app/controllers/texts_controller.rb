class TextsController < ApplicationController
  def index
    @texts = Text.genre(params)
  end

  def show
    @text = Text.find(params[:id])
  end
end
