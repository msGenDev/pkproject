Pkproject::Application.routes.draw do

  resources :bricks,      only: [:index, :show]
  resources :categories,  only: [:index, :show]
  resources :states,      only: [:index, :show]

  get '/about' => 'pages#about', as: 'about'
  get '/help' => 'pages#help', as: 'help'
  get '/contact' => 'pages#contact', as: 'contact'
  
  get '/search' => 'search#index'
  
  root to: 'pages#home'
end
