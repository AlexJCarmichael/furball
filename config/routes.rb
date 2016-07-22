Rails.application.routes.draw do
  resources :pets
  resources :users do
    collection do
      get :index
      post :create
    end
    member do
      get :show
      get :edit
      put :update
      delete :destroy
    end
  end
  root "users#index"
end
