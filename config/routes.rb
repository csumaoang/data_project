Rails.application.routes.draw do
  get 'about/index'
  resources :games, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :bosses, only: [:index, :show]
  resources :items, only: [:index, :show]

  root 'home#index'
  get 'search', to: 'search#index'
  get 'about', to: 'about#index'
end