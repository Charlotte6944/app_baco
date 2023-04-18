Rails.application.routes.draw do

  devise_for :utilisateurs
  resources :utilisateurs, only: [:new, :create, :show]

  get "/Baco/admin", to: "pages#accueil", as: "pages_accueil"

  root to: 'pages#accueil'

end
