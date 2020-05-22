Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meals, only: %i(index show new create) do
    resources :reservations, only: %i(index new create)
  end
end
