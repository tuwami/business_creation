class TeamsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
    @market_masters = MarketMaster.all
  end

  def show
    if current_admin || (current_user && current_user.teams.pluck(:id).include?(params[:id].to_i))
      @team = Team.find(params[:id])
      @users = @team.users
      @investment = Investment.new
      last_market = Market.where(team_id: @team.id).order(:market_master_id).last
      @use_histories = @team.histories.where(market_id: last_market.id)
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
