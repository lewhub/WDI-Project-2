class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to workers_path
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
