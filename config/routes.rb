Rails.application.routes.draw do

  #static pages for users not logged
  root to: "static#index"

  #Logged users
  devise_for :users
  
  resources :doubts do
  	resources :offers
  end

  post '/offers/:id', to: 'offer#accept_offer', as: 'accept_offer'
  #initial Dashboard
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'

end
