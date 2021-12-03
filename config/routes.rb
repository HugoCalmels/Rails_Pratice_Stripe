Rails.application.routes.draw do

  resources :products
  resources :webhooks, only: [:create]
  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  root "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
