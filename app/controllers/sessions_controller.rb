class SessionsController < ApplicationController
  def new
  end

  def new_worker_session
  end

  def create_worker_session
    @worker = Worker.find_by({name: params[:name]})
    if @worker && @worker.authenticate(params[:password])
      session[:worker_id] = @worker.id
      flash[:success_worker] = "Successfully Logged into worker account as #{@worker.name}!"
      redirect_to worker_path(@worker)
    else
      flash[:failure_worker_log_in] = "Invalid name and password for worker login. Try Again."
      redirect_to new_worker_session_path
    end
  end

  def create
    @customer = Customer.find_by({name: params[:name]})
    if @customer && @customer.authenticate(params[:password])
      session[:customer_id] = @customer.id
      flash[:success] = "Successfully Logged into customer account as #{@customer.name}!"
      redirect_to customer_path(@customer)
    else
      flash[:failure] = "Invalid name and password for customer login. Try Again."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to root_path
  end

  def destroy_worker
    session[:worker_id] = nil
    redirect_to workers_path
  end

end
