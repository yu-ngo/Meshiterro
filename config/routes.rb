Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show]
  
  devise_for :users
  root to: 'homes#about'
  get "homes/about" => 'homes#about', as: 'about'
end
