class CharactersController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_characters
    @characters = response['data']
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