Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'questions#index'
  resources :questions, only: [:index,:show, :new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
