Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  put 'users/:id' => "users#save_profile", :as => :save_my_profile
  devise_for :users
  resources :users

  get 'edit_profile' => "users#edit_profile", :as => :edit_my_profile
end