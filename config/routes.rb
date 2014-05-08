Rails.application.routes.draw do
  root to: 'genres#index'

  get '/genres/new', to: 'genres#new', as: 'new_genre'
  post '/genres', to: 'genres#create'
  get '/genres/:id', to: 'genres#show', as: 'genre'
  get '/genres/:id/edit', to: 'genres#edit', as: 'edit_genre'
  patch '/genres/:id', to: 'genres#update'
  put '/genres/:id', to: 'genres#update'
  delete '/genres/:id', to: 'genres#destroy'
end