class CharactersController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_characters
    @characters = response['data']

    @characters = Kaminari.paginate_array(@characters).page(params[:page]).per(8)
  end

  def show
    @character = fetch_character(params[:id])
  end

  private

  def fetch_character(id)
    response = ZeldaApiService.new.fetch_character(id)
    response['data']
  end
end