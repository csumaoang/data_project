class ItemsController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_items
    @items = response['data']

    @items = Kaminari.paginate_array(@items).page(params[:page]).per(10)
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