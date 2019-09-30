Rails.application.routes.draw do



  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    root to: 'users/sessions#new'
  end

  get 'home', to: 'application#home'

end
