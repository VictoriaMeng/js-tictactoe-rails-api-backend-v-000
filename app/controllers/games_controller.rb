class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state])
    render json: GameSerializer.serialize(@game), status: 201
  end

end
