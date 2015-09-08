Rails.application.routes.draw do

	root :to => 'session#new'

	get '/searches' => 'searches#results'
	
	resources :categories
	resources :subcategories
	resources :items

	get '/users/edit' => 'users#edit', :as => :edit_user
	resources :users, :except => [:edit]

 	get '/login' => 'session#new'
 	post '/login' => 'session#create'
 	delete '/login' => 'session#destroy'

 	get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  	get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  	get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  	resources :conversations do
    	member do
      		post :reply
      		post :trash
      		post :untrash
    	end
  	end
end
