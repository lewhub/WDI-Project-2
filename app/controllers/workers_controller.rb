class WorkersController < ApplicationController

  before_action :authorize_worker, only: [:show]

  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      flash[:new_worker_account] = "Worker Account successfully created! Please Log In."
      redirect_to new_worker_session_path
    else
      flash[:new_worker_account_fail] = "Sign up info invalid. Try Again."
      redirect_to new_worker_path
    end
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def destroy
    @worker = Worker.find(params[:id])
    if @worker.destroy
      redirect_to workers_path
    end
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update_attributes(worker_params)
      redirect_to worker_path(@worker)
    end
  end

  def show
    @worker = Worker.find(params[:id])
  end

  private
  def worker_params
    params.require(:worker).permit(:name, :profile, :availability, :password, :password_confirmation)
  end

end
