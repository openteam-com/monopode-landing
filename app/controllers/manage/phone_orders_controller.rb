class Manage::PhoneOrdersController < Manage::ApplicationController
  def index
    @phone_orders = PhoneOrder.all
  end
end
