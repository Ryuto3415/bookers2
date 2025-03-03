Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about", to: "homes#about",as: "about"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
