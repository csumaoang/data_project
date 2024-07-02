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

  def fetch_characters
    response = self.class.get('/characters')
    JSON.parse(response.body)
  end

  def fetch_character(id)
    response = self.class.get("/characters/#{id}")
    JSON.parse(response.body)
  end

  def fetch_bosses
    response = self.class.get('/bosses')
    JSON.parse(response.body)
  end

  def fetch_boss(id)
    response = self.class.get("/bosses/#{id}")
    JSON.parse(response.body)
  end

  def fetch_items
    response = self.class.get('/items')
    JSON.parse(response.body)
  end

  def fetch_item(id)
    response = self.class.get("/items/#{id}")
    JSON.parse(response.body)
  end
end
