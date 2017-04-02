Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { registrations: "registrations"}
  devise_for :admins, controllers: { registrations: "registrations"}


  root :to => "home#index"

  resources :home

  resources :categories do
  resources :projects
  end
end
