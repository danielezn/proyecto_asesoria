Rails.application.routes.draw do

  #static pages for users not logged
  root to: "static#index"

  #Logged users
  devise_for :users
  resources :doubts

end
