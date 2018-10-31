Rails.application.routes.draw do
  devise_for :users
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
end
