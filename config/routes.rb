Rails.application.routes.draw do

  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  resources :listings do
    resources :bookings, only: [:new, :create]
  end

  devise_for :users
  get 'pages/design_test', to: 'pages#design_test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
