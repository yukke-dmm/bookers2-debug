Rails.application.routes.draw do
  devise_for :users
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books,only: [:create, :index, :show, :edit, :update, :delete]

  root 'home#top'
  get 'home/about'
end