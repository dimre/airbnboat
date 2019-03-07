Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats do
  	resources :photos, only: ['new', 'create']
    resources :bookings, only: [ 'new', 'create']
    resources :reviews, only: ['new', 'create']
  end
  resources :bookings, only: ['index']
end

 # my_collection_boats GET    /boats/my_collection(.:format)                                                           boats#my_collection
