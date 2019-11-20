Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vets,  only: [:index]
  resources :users do
    resources :appointments, only: [:new, :create, :show, :destroy] do
      resources :pets, only: [:index]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
