Rails.application.routes.draw do
  devise_for :users
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :shops do
    resources :reviews, only: :create
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
