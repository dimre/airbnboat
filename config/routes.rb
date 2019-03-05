Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats do
  	resources :photos, only: ['new', 'create']
  end
  delete "boat/:id", to: "boat#destroy"
end
