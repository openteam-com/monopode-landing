class CreatePhoneOrders < ActiveRecord::Migration
  def change
    create_table :phone_orders do |t|
      t.string :full_name
      t.string :phone
      t.timestamps
    end
  end
end
