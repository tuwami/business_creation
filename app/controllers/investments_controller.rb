class InvestmentsController < ApplicationController
  #before_action :authenticate_admin_or_user
  
  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
  end
  
  def create
    investment = Investment.new(investment_params)
    investment.team_id = params[:team_id]

    if investment.save
      #investment.calculate_team_status # calc_fund, calc_employee, calc_novice
      #investment.save_history
      redirect_to team_path(params[:team_id]), notice: 'Success!'
    else
      render 'team/show'
    end
  end
  
  private
  def investment_params
    params.require(:investment).permit(:budget, :assigning,:market_id)
  end
  
  def authenticate_admin_or_user
    binding.pry
    authenticate_admin || authenticate_user
  end
end