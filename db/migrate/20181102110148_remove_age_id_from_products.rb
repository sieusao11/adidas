class RemoveAgeIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :age_id, :text
  end
end
