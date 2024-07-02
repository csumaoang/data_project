class ItemsController < ApplicationController
  def index
    @items = ZeldaApiService.new.fetch_items
  end
end
