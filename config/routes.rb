Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :event_types
  resources :episodes
  resources :bets
  resources :bakers
  resources :events
  resources :users
  resources :books
  resources :rankings
end
