class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :productname
      t.text :productimagepath
      t.text :gender_id
      t.text :age_id
      t.integer :price
      t.integer :originalpride
      t.text :color_id
      t.text :colordetail
      t.text :franchise_id
      t.text :producttype_id
      t.text :brand_id
      t.text :category_id
      t.text :sport_id
      t.text :productdetailspath

      t.timestamps
    end
  end
end
