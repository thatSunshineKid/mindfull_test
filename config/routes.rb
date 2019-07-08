Rails.application.routes.draw do

  get 'about', to: 'static_pages#about', as: 'about'
  get 'contact_us', to: 'static_pages#contact_us', as: 'contact_us'
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
