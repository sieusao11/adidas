class RemoveColorIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :color_id, :text
  end
end

#rails generate migration remove_color_id_from_products color_id:text

