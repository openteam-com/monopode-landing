class Manage::OrdersController < Manage::ApplicationController
  def index
    @orders = Order.all
  end
end
