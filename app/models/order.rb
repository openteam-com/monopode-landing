class Order < ActiveRecord::Base
  validates_presence_of :first_name, :phone, :email, :quantity
end

# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  email          :string(255)
#  quantity       :integer
#  address        :string(255)
#  payment_status :string(255)      default("Ожидается оплата")
#  created_at     :datetime
#  updated_at     :datetime
#
