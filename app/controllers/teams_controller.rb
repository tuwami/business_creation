class TeamsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  
  def index
    @teams = Team.all
  end
  
  def show
    if current_admin || (current_user && current_user.team.id == params[:id].to_i)
      @team = Team.find(params[:id])
      @users = @team.users
      @investment = Investment.new
    else
      redirect_to teams_path
    end
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
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