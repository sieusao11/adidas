class RemoveSportIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :sport_id, :text
  end
end
