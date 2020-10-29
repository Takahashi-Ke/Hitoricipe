Rails.application.routes.draw do
  devise_for :users

  root 'users#top'

  resources :users
  resources :recipes, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
