class CreateProducttypes < ActiveRecord::Migration[5.2]
  def change
    create_table :producttypes do |t|
      t.text :producttype_id
      t.text :producttype_name
    end
  end
end

#Producttype.create(producttype_name: "hoodies_sweatshirts")

