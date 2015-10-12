Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'items#index'

  # Devise
  devise_for :users, :controllers => {:omniauth_callbacks => 'omniauth_callbacks'}

  # Item
  resources :items

end
