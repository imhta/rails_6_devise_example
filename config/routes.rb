Rails.application.routes.draw do



  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  devise_scope :user do
    get 'sign_in', to: 'user/sessions#new'
    get 'sign_up', to: 'user/registrations#new'
    root to: 'user/sessions#new'
  end

  get 'home', to: 'application#home'

end
