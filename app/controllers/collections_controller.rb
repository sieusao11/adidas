class CollectionsController < ApplicationController
  def all
  	
@products = Product.filter(params.slice(:color,:subcolor, :franchise, :producttype, :brand, :category, :subcategory, :sport)).order(:id).page(params[:page]).per(6)
  end
end
