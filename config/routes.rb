Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vets,  only: [:index] # done
  resources :clients # done
  resources :appointments, only: [:new, :create, :show, :destroy] do
      resources :pets, only: [:index] # not necessary?? should be able to each through @pets where pet.client = client.user = current_user
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
