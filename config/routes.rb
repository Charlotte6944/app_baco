Rails.application.routes.draw do

  devise_for :utilisateurs, controllers: { sessions: 'utilisateurs/sessions' }
  resources :utilisateurs, only: [:new, :create, :show, :delete]

  root to: 'pages#accueil', as: :accueil

end
