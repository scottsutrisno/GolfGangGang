Rails.application.routes.draw do
  get 'user_groups/edit'
  get 'user_groups/update'
  get 'user_groups/create'
  get 'user_groups/destroy'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :groups
  resources :calendars
  resources :home
  # devise_scope :user do
  # root :to => 'devise/sessions#new'
  #end
  get 'home/index'
  root 'home#index'



end
