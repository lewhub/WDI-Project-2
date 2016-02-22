class OrdersController < ApplicationController
  def new

  end

  def index
    @orders = Order.all
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def show
  end

  private
  def order_params
    order.require(:order).permit()
  end
end
