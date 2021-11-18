Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :courses, only: %i[index show new create] do
    resources :bookings, only: %i[new create] do
      resources :reviews, only: %i[show new create]
    end
  end
  resource :dashboard, only: [:show]
  resources :reviews, only: :destroy
  get 'categories', to: 'pages#categories'
end
