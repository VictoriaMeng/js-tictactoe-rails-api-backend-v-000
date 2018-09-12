class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state])
      binding.pry
    render json: @game
  end

end
