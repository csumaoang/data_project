class BossesController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_bosses
    @bosses = response['data']
  end

  def show
    @boss = fetch_boss(params[:id])
  end

  private

  def fetch_boss(id)
    response = ZeldaApiService.new.fetch_boss(id)
    response['data']
  end
end