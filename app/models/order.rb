class Order < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :quantity

end

# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  quantity   :string(255)
#  address    :string(255)
#  created_at :datetime
#  updated_at :datetime
#
