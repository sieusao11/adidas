class RemoveProductimagepathFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :productimagepath, :text
  end
end
#rails generate migration remove_productimagepath_from_products productimagepath:text
