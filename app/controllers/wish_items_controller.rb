class WishItemsController < ApplicationController
	before_action :set_wish, only:[:create, :destroy]
	before_action :set_wish_item, only:[:destroy]

	def create
		@product = Product.find(params[:product][:product_id])
		@wish.add_product(params)

		if @wish.save
			redirect_to @product
		else
			flash[error] = 'Co van de khi tem san pham nay vao tui'
			
		end
	end

	def destroy
		@wish_item.destroy
		redirect_to wish_part
	end


	private

		def set_wish_item
			@wish_item = CartItem.find(params[:id])
		end

		def wish_item_params
			params.require(:wish_item).permit(:product_id, :wish_id)
		end


end
