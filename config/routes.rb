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

  resources :categories, only: [:show]

  resources :brands, only: [:show, :new, :create, :edit, :update, :index]

  resources :products, only: [:show]
end
