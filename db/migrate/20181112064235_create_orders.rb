class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.string :delivery_type
      t.string :payment_type

      t.timestamps
    end
  end
end

#rails generate model Order delivery_address:string delivery_type:string payment_type:string
