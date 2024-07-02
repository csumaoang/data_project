class GamesController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_games
    @games = response['data']
  end
end
