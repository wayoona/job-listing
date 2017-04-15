Rails.application.routes.draw do
  devise_for :users
  resources :jobs

  namespace :admin do
    resources :jobs
      member do
        post :publish
        post :hide
      end
  end



   root 'jobs#index'
 end
