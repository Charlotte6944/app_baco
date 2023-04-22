Rails.application.routes.draw do

  devise_for :utilisateurs
  resources :utilisateurs, only: [:new, :create, :show]

  root to: 'pages#accueil'

end
