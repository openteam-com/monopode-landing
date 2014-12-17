Rails.application.routes.draw do
  resources :main_page

  root to: 'main_page#index'
end
