Rails.application.routes.draw do
  namespace :manage do
    resources :orders, only: [:index, :create]
  end

  resources :main_page, only: :index

  root to: 'main_page#index'
end
