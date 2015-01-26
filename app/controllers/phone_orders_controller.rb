class PhoneOrdersController < ApplicationController
  def create
    if request.xhr?
      phone_order = PhoneOrder.new(phone_order_params)
      if phone_order.save
        render nothing: true
      else
        render nothing: true, status: 500
      end
    end
  end

  def phone_order_params
    params.require(:phone_order).permit(:full_name, :phone)
  end
end
