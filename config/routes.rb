Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'

end
