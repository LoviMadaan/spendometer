Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :categories
  resources :entities
  resources :users
  devise_scope :user do
    authenticated :user do
      root to: 'users#index', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'home#index', as: :unauthenticated_root
    end
  end
end
