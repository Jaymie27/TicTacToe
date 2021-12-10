Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#profil'
  get "/edit", to: 'public#edit'
  get '/game', to: 'public#game'

  patch '/', to: 'public#update'
  
end
