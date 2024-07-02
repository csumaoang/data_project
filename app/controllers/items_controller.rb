class ItemsController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_items
    @items = response['data']
  end
end
