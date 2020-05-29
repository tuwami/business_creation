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
      @team = current_user.team
      @users = @team.users
      @team.markets.each do |market|
        if params[:investment][:market_id].to_i == market.id
          investment = Investment.new(investment_params)
        else
          investment = Investment.new(market_id: market.id, budget: 0, assigning: 0)
        end
        investment.team_id = params[:team_id]
        if @team.investments.length == 0 || Time.zone.now - @team.investments.last.created_at >= 60
          if investment.save
            investment.calculate_team_status # calc_fund, calc_employee, calc_novice
            investment.calculate_market_status
            investment.save_history
          else
            @investment = Investment.new
            @use_histories = @team.histories.where(market_id: @team.markets.last.id)
            flash[:alert] = 'Save error!'
            render 'teams/show'
            return
          end
        else
          @investment = Investment.new
          @use_histories = @team.histories.where(market_id: @team.markets.last.id)
          flash[:alert] = 'Save error!'
          render 'teams/show'
          return
        end
      end
      redirect_to team_path(params[:team_id]), notice: 'Success!'
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