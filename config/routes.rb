Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:new, :create]
  get '/inscription', to: 'pages#inscription'

end
