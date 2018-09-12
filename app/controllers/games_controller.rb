class GamesController < ApplicationController
  def create
    binding.pry
    @game = Game.create(state: params[:state])
    render json: @game
  end

end
