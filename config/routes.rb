Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/show'
  get 'boats/new'
  get 'boats/create'
  get 'boats/edit'
  get 'boats/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats
end
