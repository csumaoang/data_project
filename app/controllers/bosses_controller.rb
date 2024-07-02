class BossesController < ApplicationController
  def index
    @bosses = ZeldaApiService.new.fetch_bosses
  end
end
