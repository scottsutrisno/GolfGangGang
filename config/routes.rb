Rails.application.routes.draw do
  resources :calendars
  devise_for :users
  # devise_scope :user do
  # root :to => 'devise/sessions#new'
  #end
  get 'home/index'
  root 'home#index'



end
