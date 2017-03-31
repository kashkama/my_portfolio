Rails.application.routes.draw do
  resources :posts
  devise_for :users
  devise_for :admins


  root :to => "home#index"

  resources :home

  resources :categories do
  resources :projects
  end
end
