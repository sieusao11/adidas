class RemoveColordetailFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :colordetail, :text
  end
end
