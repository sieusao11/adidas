module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |key, value|
        if value.present? then
          id_from_value = Color.find_by(color_name: value).id if key == 'color' && !Color.find_by(color_name: value).nil?
          id_from_value = Subcolor.find_by(subcolor_name: value).id if key == 'subcolor' && !Subcolor.find_by(subcolor_name: value).nil?
          id_from_value = Franchise.find_by(franchise_name: value).id if key == 'franchise' && !Franchise.find_by(franchise_name: value).nil?
          id_from_value = Producttype.find_by(producttype_name: value).id if key == 'producttype' && !Producttype.find_by(producttype_name: value).nil?
          id_from_value = Brand.find_by(brand_name: value).id  if key == 'brand' && !Brand.find_by(brand_name: value).nil?
          id_from_value = Category.find_by(category_name: value).id  if key == 'category' && !Category.find_by(category_name: value).nil?
          id_from_value = Subcategory.find_by(subcategory_name: value).id  if key == 'subcategory' && !Subcategory.find_by(subcategory_name: value).nil?
          id_from_value = Sport.find_by(sport_name: value).id if key == 'sport' && !Sport.find_by(sport_name: value).nil?
        end
        results = results.public_send(key, id_from_value) if id_from_value.present?
      end
      results
    end
  end
end