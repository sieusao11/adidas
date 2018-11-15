class AddCartsToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :cart, foreign_key: true
  end
end

#rails g migration AddCartsToCartItems cart:references
#rails generate controller CartItems
#rails generate controller Carts
#rails generate controller Oders


