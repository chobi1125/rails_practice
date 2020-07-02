Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'top' => 'home#top'
  get 'about' => 'home#about'
  get 'post' => 'post#index'
  get 'post/new' => 'post#new'
  post 'post/create' => 'post#create'
  get 'post/:id/edit' => 'post#edit'
  post 'post/:id/update' => 'post#update'
  post 'post/:id/destroy' => 'post#destroy'
  get 'post/:id' => 'post#show'
end
