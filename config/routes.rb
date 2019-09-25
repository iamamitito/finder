Rails.application.routes.draw do
  get 'random_user/new'
  devise_for :users, controllers: { registrations:
  "users/registrations"
  }
  get 'roulette', to: 'random_user#new', as: 'random_user'
  patch 'like', to: 'like#update', as: 'like'
  patch 'dislike', to: 'dislike#update', as: 'dislike'
  root to: 'random_user#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
