Rails.application.routes.draw do
  root controller: :index, action: :index

  resources :categories, only: [:show]

  resources :brands, only: [:show]

  resources :products, only: [:show]
end
