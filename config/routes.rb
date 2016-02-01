Rails.application.routes.draw do

  #static pages for users not logged
  root to: "static#index"

  #Logged users
  devise_for :users
  
  get '/:solution_id', to: "solutions#index", as: 'solutions'

  resources :doubts do
  	resources :offers do
      get '/conference', to: "conferences#index", as: 'start_conference'
      post '/conference', to: "conferences#set_doubt_resolved", as: 'set_doubt_resolved'
    end
    resources :comments
    post '/offers/:offer_id', to: "doubts#accept_offer", as: 'accept_offer'

  end
  
  get 'doubts/resolved', to: "doubts#resolved", as: 'resolved'
  
  resources :comments do
        resources :comments
  end
  
  #initial Dashboard
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'

end