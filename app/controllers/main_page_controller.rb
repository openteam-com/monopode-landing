class MainPageController < ApplicationController
  def index
    @order = Order.new

    @monopode_quantity = ValueStorage.find(1).value
  end
end
