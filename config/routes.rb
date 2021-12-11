Rails.application.routes.draw do
  get 'messages/create'
  resources :rooms do 
    resources :messages
  end
  
  resources :users
  root 'rooms#index'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
