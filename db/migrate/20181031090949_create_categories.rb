class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :category_id
      t.text :category_name
    end
  end
end

#Category.create(category_name: "apparel")
#c = Category.second
#c.category_name="compression"
#c.save
#c.destroy

