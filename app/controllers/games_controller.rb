class GamesController < ApplicationController
  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end
  
end
