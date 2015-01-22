class MainPageController < ApplicationController
  def index
    @order = Order.new
  end
end
