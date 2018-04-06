Rails.application.routes.draw do
  get 'about', to:"about#index", as:"about"

  get 'cars', to:"cars#index", as: "cars"

  get 'cars/show'
  get 'cars/search'
  get 'cars/hasImage'

  resource :about, only:[:index]
  resource :cars, only:[:index,:show,:search,:hasImage]

  root to: "cars#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
