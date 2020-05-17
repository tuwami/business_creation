class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
  
  def index
    @histories = History.all
  end

  def show
  end

  def new
    @history = History.new
  end

  def edit
  end
  
  def create
    @history = History.new(history_params)
    - if @history.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end
  
  def update
    - if @history.update(history_params)
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :edit
    end
  end
  
  def destroy
    @history.destroy
    redirect_to root_path, notice: 'Success!'
  end
  
  private
  def history_params
    params.require(:history).permit(:market_id, :budget, :recruiting)
  end
  
  def set_history
    @history = History.find(params[:id])
  end
end