Rails.application.routes.draw do
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'index#main'

  resources :programs
  resources :ids

  get '/members', to: 'index#members'
  get '/attendance', to: 'index#attendance'
  post '/attendance', to: 'index#attendance'

end
