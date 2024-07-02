class CharactersController < ApplicationController
  def index
    response = ZeldaApiService.new.fetch_characters
    @characters = response['data']
  end
end
