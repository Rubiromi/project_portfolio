Rails.application.routes.draw do
  resources :projects
  root 'static#index'
  get '/about' => 'static#about'

end
