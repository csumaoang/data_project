class ItemsController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_items
    @items = response['data']
  end

  def show
    @item = fetch_item(params[:id])
  end

  private

  def fetch_item(id)
    response = ZeldaApiService.new.fetch_item(id)
    response['data']
  end
end