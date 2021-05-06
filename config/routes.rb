Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
  root to: 'posts#index'
end
