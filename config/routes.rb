Rails.application.routes.draw do
  get 'books/index'

  #root "books#index"

  match 'books', to: "books#index", via: :get
  match 'new', to: "books#new", via: :get
  match 'Update', to: "books#Update", via: :get
  match 'show', to: "books#show", via: :get
  match 'delete', to: "books#delete", via: :get

  get 'books/index'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'


  resources :user_books
  resources :users
  root 'user_books#index'

  resources :books do 
    member do
      get :delete
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
