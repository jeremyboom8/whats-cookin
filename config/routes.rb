Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/design_test', to: 'pages#design_test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
