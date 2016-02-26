class CustomersController < ApplicationController

  before_action :authorize_customer, only: [:show]
  

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:new_customer_account] = "Customer Account successfully created! Please Log In."
      redirect_to new_session_path
    else
      flash[:new_customer_account_fail] = "Sign up info invalid. Try Again."
      redirect_to new_customer_path
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
