Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'

  resources :listings do
    resources :bookings, only: [:new, :create]
      collection do
        get "user_bookings", to: "listings#user"
      end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
