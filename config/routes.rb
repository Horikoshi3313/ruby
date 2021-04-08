Rails.application.routes.draw do
  get 'posts/index'
  get 'users/index'
  get 'lessons/hello', to: 'lessons#hello'
  get 'lessons/call', to: 'lessons#call'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'users/:id' => 'users#show'
  post 'users/:id/edit' => 'users#edit'
  post 'posts/:id' => 'posts#show'
  post 'posts/:id/edit' => 'posts#edit'
resources :users
resources :posts
end