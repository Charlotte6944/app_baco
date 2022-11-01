Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:new, :create]
  get '/inscription', to: 'pages#inscription'
  get '/inscription/recherche_joueur', to: 'pages#recherche_joueur'

  root to: 'pages#inscription'

end
