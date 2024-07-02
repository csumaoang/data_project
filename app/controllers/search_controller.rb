class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]

    case @category
    when 'games'
      response = ZeldaApiService.new.fetch_games
      @results = response['data'].select { |game| game['name'].downcase.include?(@query.downcase) }
    when 'characters'
      response = ZeldaApiService.new.fetch_characters
      @results = response['data'].select { |character| character['name'].downcase.include?(@query.downcase) }
    when 'bosses'
      response = ZeldaApiService.new.fetch_bosses
      @results = response['data'].select { |boss| boss['name'].downcase.include?(@query.downcase) }
    when 'items'
      response = ZeldaApiService.new.fetch_items
      @results = response['data'].select { |item| item['name'].downcase.include?(@query.downcase) }
    else
      @results = []
    end

    @results = Kaminari.paginate_array(@results).page(params[:page]).per(10)
  end
end
