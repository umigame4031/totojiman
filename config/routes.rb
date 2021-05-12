Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'posts#index'
  resources :orders
end
