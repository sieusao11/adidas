class RemoveFranchiseIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :franchise_id, :text
  end
end
