Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :orders
  end
  root to: 'posts#index'
end
