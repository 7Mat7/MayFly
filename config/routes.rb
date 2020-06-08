Rails.application.routes.draw do
  resources :places do
    resources :bookings, only: [:create, :new]
    resources :reviews, only: [:create, :new]
    collection do
      get :list, as: 'my-places'
    end
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
