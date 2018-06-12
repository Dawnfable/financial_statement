Rails.application.routes.draw do

  resources :statements do
    member do
      get :toggle_status
    end
  end
  
  devise_for :users
  root to: 'pages#home'
  get 'home', to: 'pages#home'

end
