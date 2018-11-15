class RemoveProducttypeIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :producttype_id, :text
  end
end

#rails generate migration remove_producttype_id_from_products producttype_id:text

