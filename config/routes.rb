Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'

  # Devise
  devise_for :users, :controllers => {:omniauth_callbacks => 'omniauth_callbacks'}

  # Tasks
  resources :tasks

  # API.
  # post 'users/create-or-login' => 'users#create_or_login'

end
