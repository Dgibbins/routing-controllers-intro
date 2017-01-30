Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'
  get '/about'    => 'pages#about'
  get '/contest' => 'pages#contest'
  get '/kitten'    => 'pages#kitten'
  get '/kittens'   => 'pages#kittens'
  get '/secrets'  => 'pages#secrets'

end
