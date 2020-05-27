class InvestmentsController < ApplicationController
  #before_action :authenticate_admin_or_user
  
  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
  end
  
  def create
    if user_signed_in?
      current_user.team.markets.each do |market|
        if params[:investment][:market_id].to_i == market.id
          investment = Investment.new(investment_params)
        else
          investment = Investment.new(market_id: market.id, budget: 0, assigning: 0)
        end
        investment.team_id = params[:team_id]
        if investment.save
          investment.calculate_team_status # calc_fund, calc_employee, calc_novice
          investment.calculate_market_status
          investment.save_history
        else
          render 'team/show'
        end
      end
      redirect_to team_path(params[:team_id]), notice: 'Success!'
    elsif admin_signed_in?
      current_admin.team.markets.each do |market|
        if params[:investment][:market_id].to_i == market.id
          investment = Investment.new(investment_params)
        else
          investment = Investment.new(market_id: market.id, budget: 0, assigning: 0)
        end
        investment.team_id = params[:team_id]
        if investment.save
          investment.calculate_team_status # calc_fund, calc_employee, calc_novice
          investment.calculate_market_status
          investment.save_history
        else
          render 'team/show'
        end
      end
      redirect_to team_path(params[:team_id]), notice: 'Success!'
    else
      redirect_to 'team/index'
    end
  end
  
  private
  def investment_params
    params.require(:investment).permit(:budget, :assigning,:market_id)
  end
  
  def authenticate_admin_or_user
    authenticate_admin || authenticate_user
  end
end