require 'httparty'

class ZeldaApiService
  include HTTParty
  base_uri 'https://zelda.fanapis.com/api'

  def fetch_games
    response = self.class.get('/games')
    JSON.parse(response.body)
  end

  def fetch_game(id)
    response = self.class.get("/games/#{id}")
    JSON.parse(response.body)
  end

  def fetch_characters(limit: 500, offset: 0)
    response = self.class.get("/characters?limit=#{limit}&offset=#{offset}")
    JSON.parse(response.body)
  end

  def fetch_character(id)
    response = self.class.get("/characters/#{id}")
    JSON.parse(response.body)
  end

  def fetch_bosses(limit: 500, offset: 0)
    response = self.class.get("/bosses?limit=#{limit}&offset=#{offset}")
    JSON.parse(response.body)
  end

  def fetch_boss(id)
    response = self.class.get("/bosses/#{id}")
    JSON.parse(response.body)
  end

  def fetch_items(limit: 500, offset: 0)
    response = self.class.get("/items?limit=#{limit}&offset=#{offset}")
    JSON.parse(response.body)
  end

  def fetch_item(id)
    response = self.class.get("/items/#{id}")
    JSON.parse(response.body)
  end
end
