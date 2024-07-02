class GamesController < ApplicationController
  def index
    @games = ZeldaApiService.new.fetch_games
  end
end
