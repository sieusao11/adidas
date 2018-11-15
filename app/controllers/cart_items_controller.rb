class CartItemsController < ApplicationController
	before_action :set_cart, only:[:create, :destroy]
	before_action :set_cart_item, only:[:destroy]

	def create
		@product = Product.find(params[:product][:product_id])
		@cart.add_product(params)

		if @cart.save
			redirect_to @product
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
