class OrdersController < ApplicationController
  def create
    if request.xhr?
      order = Order.new(order_params)
      if order.save
        #robokassa stuff

        render nothing: true and return
        #render js: "window.location.pathname='#{root_path}'"
      else
        render nothing: true, status: 500
      end
    end
  end

  private

  def order_params
    params.permit(:first_name, :last_name, :email, :quantity, :address)
  end
end
