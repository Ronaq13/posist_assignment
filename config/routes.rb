Rails.application.routes.draw do
  resources :owners
  resources :nodes
  root 'nodes#index'
end
