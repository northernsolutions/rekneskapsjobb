Rails.application.routes.draw do

  resources :contacts, only: [:new, :create]
  resources :contact
  resources :for_employers
  resources :about
  resources :employers
  resources :jobs do
    collection do
      get :search
    end
  end

  root 'jobs#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
