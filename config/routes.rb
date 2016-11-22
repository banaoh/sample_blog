Rails.application.routes.draw do
  resources :posts

  delete '/posts/:id/' => 'posts#destroy', as: 'destroy_post'
end
