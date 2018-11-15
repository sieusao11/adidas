class CreateSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :subcategories do |t|
      t.text :subcategory_name
      t.references :category, foreign_key: true
    end
  end
end

#bin/rails generate model Subcategory subcategory_name:text category:references --no-timestamps

#rails g migration AddSubcategoryToProducts subcategory:references
