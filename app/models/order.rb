class Order < ActiveRecord::Base
  validates_presence_of :full_name, :phone, :email, :quantity

  extend Enumerize
  extend ActiveModel::Naming

  enumerize :city, in: [:tomsk, :other]
end

# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  quantity       :integer
#  phone          :string(255)
#  address        :string(255)
#  email          :string(255)
#  first_name     :string(255)
#  last_name      :string(255)
#  payment_status :string(255)      default("Ожидается оплата")
#  created_at     :datetime
#  updated_at     :datetime
#
