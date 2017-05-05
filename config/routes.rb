Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  get 'books/my', to: 'books#my'
  get 'books/:id/borrow', to: 'books#borrow'
  resources :books

  resources :book_checkouts, only: :index


  root to: "home#show"
end
