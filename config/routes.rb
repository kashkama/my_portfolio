Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  devise_for :admins, skip: [:registrations, :sessions]
  as :admin do
    get 'signupforprint920120e9210weq0e0e12e19812928', to: 'devise/registrations#new', as: :new_admin_registration
    get 'signin34939v23223n3' => 'devise/sessions#new', :as => :new_admin_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_admin_session
    post 'signinjkwr9242' => 'devise/sessions#create', :as => :admin_session
    post 'signinforprint', to: 'devise/registrations#create', as: :admin_registration
    delete 'signout', to: 'devise/registrations#destroy', as: :destroy_admin_registration
  end


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
