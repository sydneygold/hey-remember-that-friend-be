Rails.application.routes.draw do
  resources :users
  post '/login', to: 'application#login'
  resources :friends, only: [:index, :show, :update, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
