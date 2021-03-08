Rails.application.routes.draw do
  resources :order_menus
  resources :reviews
  resources :orders
  resources :menu_items
  resources :users, only: [:create, :update, :destroy, :index,:show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
