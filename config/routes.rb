Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end


end
