class PhoneOrder < ActiveRecord::Base
  validates_presence_of :full_name, :phone
end

# == Schema Information
#
# Table name: phone_orders
#
#  id         :integer          not null, primary key
#  full_name  :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
