Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'home/about'
  devise_for :agents
  resources :invitations
  resources :smartlocks
  resources :properties
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
