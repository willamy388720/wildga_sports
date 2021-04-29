Rails.application.routes.draw do
  root 'home#index'
  get '/sobre', to: 'about#index'
  resources :contacts, only: %i[new]
  resources :products
  devise_for :admins, path: '/admin',
                      path_names: { sign_in: 'entrar', sign_out: 'sair' }, skip: %i[registrations passwords]
  devise_for :users, path: '/',
                     path_names: { sign_in: 'entrar', sign_out: 'sair', sign_up: 'cadastrar' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
