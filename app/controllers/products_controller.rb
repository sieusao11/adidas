class ProductsController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show]
	#only: [:new, :edit, :create, :update, :destroy]
	def index
		@products = Product.all 
		#render html: request.original_url
	end 
	
	def show
		@product = Product.find(params[:id])
	end
	
	def new
		@product = Product.new
	end
	
	def edit
		@product = Product.find(params[:id])
	end
	
	def create
		@product = Product.new(product_params)
		
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end
	
	def update
		@product = Product.find(params[:id])
		
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end
	
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		
		redirect_to products_path
	end
	
	private
	def product_params
		params.require(:product).permit(:productname, :productimagepath, :gender_id, :age_id, :price, :originalpride, :color_id, :colordetail, :franchise_id, :producttype_id, :brand_id, :category_id, :sport_id, :productdetailspath)
	end
end

#bin/rails generate model Product productname:text productimagepath:text gender_id:text age_id:text price:integer originalpride:integer color_id:text colordetail:text franchise_id:text producttype_id:text brand_id:text category_id:text sport_id:text productdetailspath:text 