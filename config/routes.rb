Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cabins do #show index without log-in
    resources :bookings, only: [:new, :create, :destroy]
  end

  resources :bookings, except: [:new, :create, :index]

  get 'profile', to: 'pages#profile'

  #get "/cabins", to: 'cabins#index', as: 'list_of_cabins'
#
  #get '/cabins/new', to: 'cabins#new'
  #post '/cabins', to: 'cabins#create'
  #get '/user/bookings', to: 'bookings#index', as: 'list_of_bookings'
end


