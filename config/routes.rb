Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :courses, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end

  resource :dashboard, only: [:show]
end
