Rails.application.routes.draw do
  devise_for :users
  root to: "news#index"
  resources :users
  resources :news
end
