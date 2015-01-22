class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :phone
      t.string :address
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :payment_status, default: "Ожидается оплата"
      t.timestamps
    end
  end
end
