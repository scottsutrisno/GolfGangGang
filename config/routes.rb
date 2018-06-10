Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :groups
  resources :user_groups
  resources :calendars
  resources :home
  # devise_scope :user do
  # root :to => 'devise/sessions#new'
  #end
  get 'home/index'
  root 'home#index'



end
