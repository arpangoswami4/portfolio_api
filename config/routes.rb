Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post 'visitors', to: 'visitors#create'
  get 'download_cv', to: 'documents#download_cv'

end
