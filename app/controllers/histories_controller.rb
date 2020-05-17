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
    @team = Team.find(params[:team_id])
    @history = History.new
    - if @history.update(history_params)
      redirect_to team_path(@team), notice: 'Success!'
    else
      redirect_to team_path(@team), alert: 'Invalid!'
    end
  end
  
  def update
    - if @history.update(history_params)
      redirect_to team_path(@team), notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :edit
    end
  end
  
  def destroy
    @history.destroy
    redirect_to team_path, notice: 'Success!'
  end
  
  private
  def history_params
    params.require(:history).permit(:team_id, :market_id, :budget, :recruiting)
  end
  
  def set_history
    @history = History.find(params[:id])
  end
end