Rails.application.routes.draw do

  devise_for :users

  root "home#index"
  resources :home, only: [:show,:index]
  resources :posts do
    post :like, on: :member
  end
  resources :likes, only: [:create, :destroy]
  resources :about, only: [:index]

end
