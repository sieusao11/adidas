class CartItemsController < ApplicationController
	before_action :set_cart, only:[:create, :destroy]
	before_action :set_cart_item, only:[:destroy]

	def create
		
		@cart.add_product(params)

		if @cart.save
			
		else
			flash[error] = 'Co van de khi tem san pham nay vao tui'
			
		end
	end

	def destroy
		@cart_item.destroy
		redirect_to cart_part
	end


	private

		def set_cart_item
			@cart_item = CartItem.find(params[:id])
		end

		def cart_item_params
			params.require(:cart_item).permit(:product_id, :cart_id, :quantity)
		end


end
