Rails.application.routes.draw do
  devise_for :users
  root to: ‘pages#home’
  resources :cabins do #show index without log-in
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create, :index]
  get ‘profile’, to: ‘pages#profile’
end
