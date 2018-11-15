class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.text :brand_id
      t.text :brand_name
    end
  end
end
