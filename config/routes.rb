Rails.application.routes.draw do
  resources :friends, only: [:index, :show, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
