Rails.application.routes.draw do
  post 'without_gst/generate'
  post 'bill/generate'
  root 'home#index'
  post 'pdf/generate'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
