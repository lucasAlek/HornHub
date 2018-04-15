Rails.application.routes.draw do
  get 'about', to:"about#index", as:"about"
  #
  # get 'cars', to:"cars#index", as: "cars"
  #
  # get 'cars/show'
  # get 'cars/search'
  # get 'cars/has_image'

  resource :about, only:[:index]
  resources :cars
  #resource :cars, only:[:index,:show,:search,:has_image]

  root to: "cars#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
