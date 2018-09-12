class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

end
