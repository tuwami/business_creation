class HistoriesController < ApplicationController
  before_action :authenticate_admin_or_user
  
  def index
    @histories = History.all
  end

  def show
    @history = History.find(params[:id])
  end

  def new
    @history = History.new
  end
  
  def create
    @team = Team.find(params[:team_id])
    @history = History.new(history_params)
    @history.set_column
    - if @history.save
      redirect_to team_path(@team), notice: 'Success!'
    else
      redirect_to team_path(@team), alert: 'Invalid!'
    end
  end
  
  def edit
    @team = Team.find(params[:team_id])
    @history = @team.histories.find(params[:id])
  end
  
  def update
    @team = Team.find(params[:team_id])
    @history = @team.histories.find(params[:id])
    - if @history.update(history_params)
      redirect_to team_path(@team), notice: 'Success!'
    else
      flash[:alert] = 'Invalid!'
      render :edit
    end
  end
  
  def destroy
    @team = Team.find(params[:team_id])
    @history = @team.histories.find(params[:id])
    @history.destroy
    redirect_to team_path(@team), notice: 'Deleted!'
  end
  
  private
  def history_params
    params.require(:history).permit(:team_id, :market_id, :budget, :assigning)
  end
  
  def authenticate_admin_or_user
    authenticate_admin! || authenticate_user!
  end
end