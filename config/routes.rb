Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  devise_for :admins


  root :to => "home#index"

  resources :home do
    member do
      get :skill
    end
  end
  
  resources :categories do
    resources :projects
  end

  resources :posts do
    resources :comments
  end

end
