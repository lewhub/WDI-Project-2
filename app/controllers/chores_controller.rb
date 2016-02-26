class ChoresController < ApplicationController
  def index
    @chores = Chore.all
  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.new(chore_params)
    if @chore.save
      redirect_to chores_path
    end
  end

  def edit
    @chore = Chore.find(params[:id])
  end

  def destroy
    @chore = Chore.find(params[:id])
    if @chore.order_id == nil
      if @chore.destroy
        redirect_to chores_path
      end
    end
  end

  def show
    @chore = Chore.find(params[:id])
  end

  def update
    @chore = Chore.find(params[:id])
    if @chore.update_attributes(chore_params)
      redirect_to chore_path(@chore)
    end
  end

  private
  def chore_params
    params.require(:chore).permit(:chore_title, :price, :worker_count)
  end

end
