Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'

  resources :movies
  resources :lists


end
