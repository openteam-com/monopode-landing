class PhoneOrdersController < ApplicationController
  def create
    if request.xhr?
      phone_order = PhoneOrder.new(phone_order_params)
      if phone_order.save
        render nothing: true
        p Sms.new.send("Новый заказ звонка от #{phone_order.full_name} на номер #{phone_order.phone}")
      else
        render nothing: true, status: 500
      end
    end
  end

  private
  def phone_order_params
    params.require(:phone_order).permit(:full_name, :phone)
  end
end
