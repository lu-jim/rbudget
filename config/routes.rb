Rails.application.routes.draw do
  devise_for :users, path: ''

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'pages/home'
  resources :groups, only: %i[index show new delete]
  resources :log_records, only: %i[index show new delete]

  # Defines the root path route ("/")
  root 'pages#home'
end
