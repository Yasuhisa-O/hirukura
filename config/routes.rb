Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
end
