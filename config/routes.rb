Rails.application.routes.draw do
  namespace :manage do
    resources :orders, only: :index
  end

  resources :main_page, only: :index
  resources :orders, only: :create

  root to: 'main_page#index'
end
