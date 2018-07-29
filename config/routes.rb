Rails.application.routes.draw do
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'index#main'

  resources :programs
  resources :ids
  resources :notices
  resources :customers


#get '/mypage/index/:current_user_id' => 'mypage#index', :as => :mypage_index
  #get '/members/show/:id', to: 'members#show'
  #get '/members', to: 'index#members'
  
  get '/attendance', to: 'index#attendance'
  post '/attendance', to: 'index#attendance'

end
