class ZeldaApiService
    include HTTParty
    base_uri 'https://zelda.fanapis.com/api'
  
    def initialize; end
  
    def fetch_games
      response = self.class.get('/games')
      JSON.parse(response.body)
    end
  
    def fetch_characters
      response = self.class.get('/characters')
      JSON.parse(response.body)
    end
  
    def fetch_bosses
      response = self.class.get('/bosses')
      JSON.parse(response.body)
    end
  
    def fetch_items
      response = self.class.get('/items')
      JSON.parse(response.body)
    end
  end
  