class RemoveProductdetailspathFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :productdetailspath, :text
  end
end

#rails generate migration remove_productdetailspath_from_products productdetailspath:text

