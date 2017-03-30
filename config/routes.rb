Rails.application.routes.draw do
  devise_for :admins
  root :to => "home#index"

  resources :home

  resources :categories do
  resources :projects
  end
end
