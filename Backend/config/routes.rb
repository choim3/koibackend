Rails.application.routes.draw do
  resources :reviews
  resources :orders
  resources :menu_items
  resources :users, only: [:create, :update, :destroy, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
