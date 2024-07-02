class BossesController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_bosses
    @bosses = response['data']
  end
end
