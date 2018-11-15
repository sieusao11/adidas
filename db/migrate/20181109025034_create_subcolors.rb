class CreateSubcolors < ActiveRecord::Migration[5.2]
  def change
    create_table :subcolors do |t|
      t.text :subcolor_name
      t.references :color, foreign_key: true
    end
  end
end
#bin/rails generate model Subcolor subcolor_name:text color:references --no-timestamps

#Producttype.create(producttype_name: "tee")
