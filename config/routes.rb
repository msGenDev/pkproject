Pkproject::Application.routes.draw do
  
  get '/about' => 'pages#about', as: 'about'
  get '/help' => 'pages#help', as: 'help'
  get '/contact' => 'pages#contact', as: 'contact'
  get '/bricks' => 'pages#bricks', as: 'bricks'
  get '/categories' => 'pages#categories', as: 'categories'
  get '/state' => 'pages#states', as: 'states'
  
  root to: 'pages#home'
end
