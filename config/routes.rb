Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :comments

  resources :articles do
    resources :comments
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users

  resources :users do
    get 'list', :on => :collection
  end
end