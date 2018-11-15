class RemoveFranchiseIdFromFranchises < ActiveRecord::Migration[5.2]
  def change
    remove_column :franchises, :franchise_id, :text
  end
end
#rails generate migration remove_franchise_id_from_franchises franchise_id:text
