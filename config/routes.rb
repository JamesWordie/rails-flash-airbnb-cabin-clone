Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'

  resources :cabins do #show index without log-in
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create, :index] do
    resources :reviews, only: [:new, :create]
  end

end


