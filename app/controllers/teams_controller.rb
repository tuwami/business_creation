class TeamsController < ApplicationController
   before_action :authenticate_admin!
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  
  def index
    @teams = Team.all
  end
  
  def show
    @history = History.new
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    - if @team.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :new
    end
  end
  
  def edit
  end
  
  def update
    - if @team.update(team_params)
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :edit 
    end
  end
  
  def destroy
    @team.destroy
    redirect_to root_path, notice: 'Success!'
  end
    
  private
  def team_params
    params.require(:team).permit(:name)
  end
  
  def set_team
    @team = Team.find(params[:id])
  end
end