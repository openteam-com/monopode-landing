class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :address
      t.string :city
      t.string :delivery_method
      t.string :email
      t.string :full_name
      t.string :payment_status, default: "Ожидается оплата"
      t.string :phone
      t.timestamps
    end
  end
end
