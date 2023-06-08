Rails.application.routes.draw do

  devise_for :users

  root to: "pages#home"

  resources :yachts do
    collection do
      get :my_yachts, as: :my
    end
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
