class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :quantity
      t.string :address
      t.string :payment_status, default: "Ожидается оплата"
      t.timestamps
    end
  end
end
