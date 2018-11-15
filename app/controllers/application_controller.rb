class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_cart
	before_action :set_wish

	private
	def set_cart 
		current_user ? session[:cart_id] = current_user.id : ''
		@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end

	def set_wish 
		current_user ? session[:wish_id] = current_user.id : ''
		@wish = Wish.find(session[:wish_id])
	rescue ActiveRecord::RecordNotFound
		@wish = Wish.create
		session[:wish_id] = @wish.id
	end

end
