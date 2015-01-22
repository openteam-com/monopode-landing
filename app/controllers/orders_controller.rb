class OrdersController < ApplicationController
  def create
    if request.xhr?
      order = Order.new(order_params)
      if order.save
        render partial: 'commons/pay_button', locals: { id: order.id, quantity: order.quantity.to_i }
      else
        p order.errors #TODO: удалить перед выкатом
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
    params.require(:order).permit(:first_name, :email, :quantity, :address, :phone)
  end
end
