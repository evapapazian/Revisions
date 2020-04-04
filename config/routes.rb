Rails.application.routes.draw do
  get 'static_pages/index'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] 
  resources :recipes
  root 'static_pages#index'

  namespace :admin do
  resources :recipes, :users 
end
end
