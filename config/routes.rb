Rails.application.routes.draw do

  post 'visitors', to: 'visitors#create'
  get 'download_cv', to: 'documents#download_cv'
  resources :testimonials, only: [:create, :index]

end
