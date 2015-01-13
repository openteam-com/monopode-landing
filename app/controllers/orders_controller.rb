class OrdersController < ApplicationController
  def create
    if request.xhr?
      order = Order.new(order_params)
      if order.save
        render partial: 'commons/pay_button', locals: { id: order.id, quantity: order.quantity.to_i * 10 }
      else
        render nothing: true, status: 500
      end
    end
  end

  def update
    if request.xhr?
      order = Order.find(params[:id])
      order.address = params[:address]
      if order.save
        render nothing: true, status: 200
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
