class Manage::OrdersController < Manage::ApplicationController
  def index
    @orders = Order.all
  end

  def create
    order=Order.new(order_params)
    if order.save
      #robokassa stuff
      redirect_to root_path
    else
      #error message
    end
  end

  private
  def order_params
    params.permit(:first_name, :last_name, :email, :quantity, :address)
  end
end
