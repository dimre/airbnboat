Rails.application.routes.draw do
  get "profiles/:slug", to: "profiles#show", as: "profile"

  devise_for :users
  root to: 'pages#home'
  resources :bookings, only: ['index']
  resources :messages, only: ['index', 'new', 'create']
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats do
  	resources :photos, only: ['new', 'create']
    resources :bookings, only: [ 'new', 'create']
    resources :reviews, only: ['new', 'create']
  end
  resources :bookings, only: ['index', 'destroy']
end