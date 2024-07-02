class CharactersController < ApplicationController
  def index
    @characters = ZeldaApiService.new.fetch_characters
  end
end
