Rails.application.routes.draw do
  resources :nodes
  root 'home#index'
end
