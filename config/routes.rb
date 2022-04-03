Rails.application.routes.draw do
  devise_for :users, path: ''

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :groups, only: %i[index show new destroy create]
  resources :log_records, only: %i[index show new destroy create]

  # Defines the root path route ("/")
  root 'groups#index'
end
