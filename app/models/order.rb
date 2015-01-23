class Order < ActiveRecord::Base
  attr_accessor :fio, :post_index, :post_address
  validates_presence_of :full_name, :phone, :email, :quantity

  extend Enumerize
  extend ActiveModel::Naming

  enumerize :city, in: [:tomsk, :other], default: :tomsk
  enumerize :delivery_method, in: [:pickup, :delivery], default: :pickup
end

# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  quantity        :integer
#  address         :string(255)
#  city            :string(255)
#  delivery_method :string(255)
#  email           :string(255)
#  full_name       :string(255)
#  payment_status  :string(255)      default("Ожидается оплата")
#  phone           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
