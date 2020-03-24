Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized"
  get "customers/missing_email", to: "customers#missing_email"
  # resources "customers", only: %i[alphabetized missing_email]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
