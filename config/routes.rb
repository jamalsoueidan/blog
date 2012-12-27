Blog::Application.routes.draw do
  get "main/about_me"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config


  resources :projects, :only => [:index, :show]
  resources :archives, :only => [:index]

  match '/sitemap.xml' => "main#sitemap", :as => 'sitemap', :via => :get, :format => :xml
  match '/about_me' => 'main#about_me', :as => 'about_me', :via => :get
  match '/blog/:id' => "posts#show", :as => "post", :via => :get
  match '/blog/' => "posts#index", :as => 'posts', :via => :get

  root :to => 'posts#index'
end
