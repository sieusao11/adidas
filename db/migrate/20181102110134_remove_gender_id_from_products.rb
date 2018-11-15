class RemoveGenderIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :gender_id, :text
  end
end
