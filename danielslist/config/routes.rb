Rails.application.routes.draw do
 root :to => 'session#new'
 
 get '/users/edit' => 'users#edit', :as => :edit_user
 resources :users, :except => [:edit]

 get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'
end
