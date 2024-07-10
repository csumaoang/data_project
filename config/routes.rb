Rails.application.routes.draw do
  root 'home#index'
  
  get 'search', to: 'search#index'
  get 'about', to: 'about#index'

  resources :games, only: [:index, :show] do
    resources :characters, only: [:index, :show]
    resources :bosses, only: [:index, :show]
    resources :items, only: [:index, :show]
  end

  resources :characters, only: [:index, :show]
  resources :bosses, only: [:index, :show]
  resources :items, only: [:index, :show]
end
