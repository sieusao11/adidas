class RemoveBrandIdFromBrands < ActiveRecord::Migration[5.2]
  def change
    remove_column :brands, :brand_id, :text
  end
end
#rails generate migration remove_brand_id_from_brands brand_id:text

