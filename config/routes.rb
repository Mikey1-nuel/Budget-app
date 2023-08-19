Rails.application.routes.draw do
  devise_for :users

  root to: 'splash#index'
  # get '/users/:id', to: 'groups#index', as: 'user_root'
  resources :groups do
    resources :conversions
    resources :group_conversions
  end
  resources :users
end
