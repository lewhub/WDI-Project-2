class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      redirect_to customers_path
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to customer_path(@customer)
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :password, :password_confirmation, :credit_card_info)
  end

end
