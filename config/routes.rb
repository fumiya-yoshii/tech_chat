Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'questions#index'
  resources :questions, only: [:index, :show, :new, :create] do
    resources :answers, only: :create
  end # Defines the root path route ("/")
  # root "articles#index"
end
