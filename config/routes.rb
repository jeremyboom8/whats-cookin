Rails.application.routes.draw do

  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  resources :listings do
    resources :bookings, only: [:new, :create]
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }

  get 'pages/design_test', to: 'pages#design_test'

  get '/dashboard', to: 'dashboards#show'

  resources :users
end
