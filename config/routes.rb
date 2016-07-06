Rails.application.routes.draw do
  resources :pets
  resources :users
  root "users#index"
end
