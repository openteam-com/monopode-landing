Rails.application.routes.draw do
  namespace :manage do
    resources :orders, only: :index

    root to: 'orders#index'
  end

  resources :main_page, only: :index
  resources :orders, only: [:create, :update]

  root to: 'main_page#index'
end
