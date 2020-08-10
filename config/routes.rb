Rails.application.routes.draw do
  get 'user/index'
  root 'user#index'
  resources :users
  get 'user/:id', to: 'user#show'
  get 'user/:id/inventory', to: 'user#inventory'
  post 'product/create', to: 'product#create'
end
