Rails.application.routes.draw do


  # get 'works/new'
  # get 'session/new'
  root :to => 'pages#home'
  resources :users
  resources :works
  resources :rateworks
  resources :contracts
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/search' => 'pages#search'
  # get 'contracts/new'
  post '/ranks/add' => 'ranks#create'

  get '/error/:msg' => 'pages#error'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
