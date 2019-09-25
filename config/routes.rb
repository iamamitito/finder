Rails.application.routes.draw do
  get 'random_user/new'
  devise_for :users, controllers: { registrations:
  "users/registrations"
  }
  get 'congrats', to: 'congrats#index', as: 'congrats'
  get 'private_messages/:id', to: 'private_messages#new', as: 'new_pm'
  patch 'private_messages/:id', to: 'private_messages#update', as: 'private_message'
  get 'roulette', to: 'random_user#new', as: 'random_user'
  patch 'like/:id', to: 'likes#update', as: 'like'
  patch 'dislike/:id', to: 'dislikes#update', as: 'dislike'
  root to: 'random_user#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
