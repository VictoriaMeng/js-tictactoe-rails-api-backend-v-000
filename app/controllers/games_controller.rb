class GamesController < ApplicationController
  def create
    binding.pry
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
