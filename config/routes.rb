Rails.application.routes.draw do
  resources :books, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :edit, :create]
  get 'top'=>'homes#top'
  get 'about'=>'homes#about'
  root to: 'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
