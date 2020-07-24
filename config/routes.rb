Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'homes#top'

  get 'books' => 'books#books'

  post 'books' => 'books#create'

  get 'books/:id' => 'books#show', as: 'show_books'

end
