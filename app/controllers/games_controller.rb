class GamesController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_games
    @games = response['data']
  end

  def show
    @game = fetch_game(params[:id])
  end

  private

  def fetch_game(id)
    response = ZeldaApiService.new.fetch_game(id)
    response['data']
  end
end
