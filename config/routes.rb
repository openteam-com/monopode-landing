Rails.application.routes.draw do
  namespace :manage do
    root to: 'orders#index'
    resources :orders, only: :index
    resources :phone_orders, only: :index
  end

  resources :main_page, only: :index
  resources :orders, only: [:create, :update]
  resources :phone_orders, only: [:create]

  root to: 'main_page#index'
end
