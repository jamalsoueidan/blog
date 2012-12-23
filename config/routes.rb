Blog::Application.routes.draw do
  get "main/about_me"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :posts, :only => [:index, :show]
  resources :projects, :only => [:index, :show]
  resources :archives, :only => [:index, :show]
  
  match '/about_me' => 'main#about_me', :as => 'about_me', :via => :get

  root :to => 'posts#index'
end
