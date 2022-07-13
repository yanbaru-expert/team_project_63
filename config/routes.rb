Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    post "user/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  root to: "texts#index"
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
end
