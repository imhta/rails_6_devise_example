Rails.application.routes.draw do
  devise_for :users
  root to: 'application#home'
  
  get '/home', to: 'application#home', as: 'home'

end
