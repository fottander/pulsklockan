Rails.application.routes.draw do
  devise_for :admins, except: [:registrations]
  as :admin do
    get 'admins/edit' => 'admins/registrations#edit', as: 'edit_admin_registration'
    put 'admins' => 'admins/registrations#update', as: 'admin_registration'
  end
  devise_scope :admin do
    authenticated :admin do
      root to: 'administrations#index', as: :authenticated_root
    end
  end

  root controller: :index, action: :index

  resources :kategorier, controller: 'categories', as: 'categories', only: [:show, :new, :create, :edit, :update, :index, :destroy]

  resources :varumärken, controller: 'brands', as: 'brands', only: [:show, :new, :create, :edit, :update, :index, :destroy]

  resources :produkter, controller: 'products', as: 'products', only: [:new, :create, :edit, :update, :index, :destroy]

  get '/produkter/:id', to: 'products#show'
end
