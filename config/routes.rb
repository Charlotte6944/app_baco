Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:new, :create, :show]
  get '/inscription', to: 'pages#inscription'
  get '/inscription/recherche_joueur', to: 'pages#recherche_joueur'
  get '/inscriptionForm', to: 'pages#inscription_form'

  root to: 'pages#inscription'

end
