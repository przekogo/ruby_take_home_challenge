Rails.application.routes.draw do
  get 'home/index'
  get 'wallets/index', as: :wallets_index
  get 'wallets/show/:id', to: 'wallets#show', as: :wallets_show
  get 'wallets/new', as: :wallets_new
  post 'wallets/new', to: 'wallets#create', as: :wallets_create

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'wallets#index', as: :unauthenticated_root
    end

    unauthenticated :user do
      root to: 'home#index', as: :authenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
