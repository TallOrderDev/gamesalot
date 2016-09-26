Rails.application.routes.draw do
  root 'games#index'
  resources :games
  resources :twentyfortyeight_games
  # resources :balls
  # resources :scales
  resources :scale_games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
