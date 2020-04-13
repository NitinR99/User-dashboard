Rails.application.routes.draw do
root 'sessions#welcome'
   resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout' => 'sessions#destroy'
  get 'authorized', to: 'sessions#_index'
  get '/home'    => 'topmenu#home'
  get '/friends' => 'topmenu#friends'
  get '/messages' => 'topmenu#messages'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

