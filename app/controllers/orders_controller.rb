class OrdersController < ApplicationController

  before_action :authorize_customer, only: [:new]

  def new
    @order = Order.new
    @chores = Chore.all
    @workers = Worker.all
    @customers = Customer.all
  end

  def index
    @orders = Order.all
    @customers = Customer.all
    @workers = Worker.all
  end

  def create
    # @order = Order.new(order_params)
    @order = current_customer.orders.new(order_params)
    # @customer_one = nil
    # @order.update(:order_attributes => {:customer => Customer.first})
    # @order.customer = Customer.find(@order.customer_id)
    @order.customer = current_customer
    @order.customer_id = current_customer.id
    @order.chore = Chore.find(@order.chore_id)
    @order.worker = Worker.find(@order.worker_id)
    if @order.save
      @order.customer.orders << @order
      @order.worker.orders << @order
      redirect_to customer_path(current_customer)
    end
  end

  def edit
    @order = Order.find(params[:id])
    @customers = Customer.all
    @chores = Chore.all
    @workers = Worker.all
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to orders_path
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      redirect_to order_path(@order)
    end
  end

  def show
    @order = Order.find(params[:id])
    @customers = Customer.all
    @workers = Worker.all
  end

  private
  def order_params
    params.require(:order).permit(:status, :payment, :expected_start_date, :chore_id, :worker_id)
    # @order.customer.merge(:customer)
  end
end
