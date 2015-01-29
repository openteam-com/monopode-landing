class MainPageController < ApplicationController
  def index
    @order = Order.new
    @phone_order = PhoneOrder.new

    @monopode_quantity = ValueStorage.find(1).value
    @meta_description = MetaDescription.first
  end
end
