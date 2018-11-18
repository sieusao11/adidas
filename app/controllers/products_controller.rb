class ProductsController < ApplicationController
	# before_action :authenticate_user!, :except => [:index, :show]
	# before_action :authenticate_admin, :except => [:index, :show] 
	#only: [:new, :edit, :create, :update, :destroy]
	def index
		@products = Product.filter(params.slice(:color,:subcolor, :franchise, :producttype, :brand, :category, :subcategory, :sport)).order(:id).page(params[:page]).per(48)
	end
	
	def show
		@product = Product.find(params[:id])
		@sameproducts = Product.all
	end
	
	def new
		if current_user.try(:admin?) 
			@product = Product.new
		end
	end
	
	def edit
		if current_user.try(:admin?) 
			@product = Product.find(params[:id])
		end
	end
	
	def create
		@product = Product.new(product_params)
		
		if @product.save
			# redirect_to @product
		else
			render 'new'
		end
	end
	
	def update
		@product = Product.find(params[:id])
		
		if @product.update(product_params)
			# redirect_to collections_all_path
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
		params.require(:product).permit(:productname, :price, :originalpride, :color_id, :subcolor_id, :colordetail, :franchise_id, :producttype_id, :brand_id, :category_id, :subcategory_id, :sport_id, :sku, :avatar, images: [])
	end
	def filtering_params(params)
		params.slice(:status, :location, :starts_with)
	end

end

#bin/rails generate model Product productname:text productimagepath:text 
#gender_id:text age_id:text price:integer originalpride:integer color_id:text 
#colordetail:text franchise_id:text producttype_id:text brand_id:text 
#category_id:text sport_id:text productdetailspath:text 
# bin/rails generate model Gender gender_id:text gender_name:text --no-timestamps
# bin/rails generate model Age age_id:text age_name:text --no-timestamps
# bin/rails generate model Franchise franchise_id:text franchise_name:text --no-timestamps
# bin/rails generate model Producttype producttype_id:text producttype_name:text --no-timestamps
#bin/rails generate model Brand brand_id:text brand_name:text --no-timestamps
# bin/rails generate model Category category_id:text category_name:text --no-timestamps
# bin/rails generate model Sport sport_id:text sport_name:text --no-timestamps
