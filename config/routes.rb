Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new,:create]
  end
end
