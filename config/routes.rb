Rails.application.routes.draw do
  namespace :manage do
    root to: 'orders#index'
    resources :orders, only: :index
    resources :phone_orders, only: :index
    resources :meta_descriptions, only: [:edit, :update, :show]
  end

  resources :main_page, only: :index
  resources :orders, only: [:create, :update]
  resources :phone_orders, only: [:create]

  post '/update_button', as: 'update_button', to: 'orders#update_button'
  root to: 'main_page#index'
end
