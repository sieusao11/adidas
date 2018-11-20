class WishController < ApplicationController
	def index
		@sameproducts = Product.all
	end
end