Rails.application.routes.draw do
  resources :games, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :bosses, only: [:index, :show]
  resources :items, only: [:index, :show]

  root 'home#index'
  get 'search', to: 'search#index'
end