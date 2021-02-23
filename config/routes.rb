Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/cabins", to: 'cabins#index', as: 'list_of_cabins'

  get '/cabins/new', to: 'cabins#new'
  post '/cabins', to: 'cabins#create'
  get '/user/bookings', to: 'bookings#index', as: 'list_of_bookings'

end
