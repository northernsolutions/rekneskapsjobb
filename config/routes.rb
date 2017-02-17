Rails.application.routes.draw do

  resources :let_the_job_find_you
  resources :passes, only: [:new, :create]
  resources :applies, only: [:new, :create]
  resources :finds, only: [:new, :create]
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
