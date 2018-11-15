Rails.application.routes.draw do
	
	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	devise_scope :user do  
		get '/users/sign_out' => 'devise/sessions#destroy'     
	end
	get 'collections/all'
	root 'home#index'
	get 'search', to: 'search#index'
	get  'collections/all'
	get  'pages/features'
	get  'blogs/news'
	get  'pages/about'
	get  'pages/contact'
	resources :products
	resources :products do
		resources :comments
	end
	
	resources :cart_items
	get 'cart', to: 'cart#index'
	resources :wish_items
	get 'wish', to: 'wish#index'
	resources :orders
end
