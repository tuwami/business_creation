class InvestmentsController < ApplicationController
  #before_action :authenticate_admin_or_user
  
  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
  end
  
  def create
    @team = Team.find(params[:team_id])
    investment = Investment.new(investment_params)
    investment.team_id = @team.id
    #@investment.set_column
    if @investment.save
      redirect_to team_path(@team), notice: 'Success!'
    else
      render 'team/show'
    end
  end
  
  private
  def investment_params
    params.require(:investment).permit(:budget, :assigning)
  end
  
  def authenticate_admin_or_user
    binding.pry
    authenticate_admin || authenticate_user
  end
end