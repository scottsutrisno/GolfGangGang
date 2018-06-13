Rails.application.routes.draw do
  get 'user_calendars/index'
  get 'user_calendars/new'
  get 'user_calendars/edit'
  get 'user_calendars/show'
  get 'user_calendars/create'
  get 'user_calendars/destroy'
  resources :calendars do
   get "/users/:user_id", to: "calendars#add_user", as: "add_user"
   delete "/users/:user_id", to: "calendars#destroy_user", as: "destroy_user"
  end
  get 'users/index'
  get 'users/show'
  get 'users/destroy'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :groups
  resources :users
  resources :user_groups
  resources :calendars
  resources :home
  # devise_scope :user do
  # root :to => 'devise/sessions#new'
  #end
  get 'home/index'
  root 'home#index'



end
