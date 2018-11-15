class AddSubcolorToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :subcolor, foreign_key: true
  end
end

#rails g migration AddSubcolorToProducts subcolor:references