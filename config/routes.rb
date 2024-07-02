Rails.application.routes.draw do
  get 'items/index'
  get 'bosses/index'
  get 'characters/index'
  get 'games/index'
  get 'home/index'
  root 'home#index'

  get '/games', to: 'games#index'
  get '/characters', to: 'characters#index'
  get '/bosses', to: 'bosses#index'
  get '/items', to: 'items#index'
end