Rails.application.routes.draw do
  root 'home#index'
  get '/sobre', to: 'about#index'
  resources :contacts, only: %i[new]
  resources :products, only: %i[index new create]
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
