class RemoveProducttypeIdFromProducttypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :producttypes, :producttype_id, :text
  end
end
#rails generate migration remove_producttype_id_from_producttypes producttype_id:text

