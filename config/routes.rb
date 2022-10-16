Rails.application.routes.draw do

  devise_for :users
  get '/pages/inscription', to: 'pages#inscription'

end
