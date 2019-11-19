Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vet,  only: [:index]
  resources :user do
    resources :appointment, only: [:new, :create, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
