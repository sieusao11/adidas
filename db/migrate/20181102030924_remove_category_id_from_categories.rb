class RemoveCategoryIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :category_id, :text
  end
end
#rails generate migration remove_category_id_from_categories category_id:text
