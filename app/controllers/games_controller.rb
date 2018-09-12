class GamesController < ApplicationController
  def create
    binding.pry
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  private

  def game_params
    params.require(:state)
  end
end
