Rails.application.routes.draw do
  
  get '/' => 'homes#top'
  resources :books
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  post 'books' => 'books#create'
  #get 'books/:id' => 'books#show' , as: 'book'
end