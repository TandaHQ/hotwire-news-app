Rails.application.routes.draw do
  root 'home#index'
  post 'comments/create', to: "comments#create", as: :comments_create
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
