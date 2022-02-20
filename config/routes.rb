Rails.application.routes.draw do
  devise_for :users
  get 'top'=>'homes#top'
  get 'about'=>'homes#about'
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show, :create, :edit, :update]
  resources :users, only: [:new, :index, :show, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end