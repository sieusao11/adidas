class AddSportToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :sport, foreign_key: true
  end
end

#Producttype.create(producttype_name: "tee")

