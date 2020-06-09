class InvestmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to team_path(current_user.team)
  end

  def create
    @team = current_user.team
    @users = @team.users
    if @team.investments.length != 0 && Time.zone.now - @team.investments.last.created_at < 1
      laps = Time.zone.now - @team.investments.last.created_at
      render_error("前の投資から１秒以内に投資することはできません。後" + (1-laps).to_i.to_s + "秒待ってください。")
      return
    end
    if params[:investment][:budget].empty? || params[:investment][:assigning].empty?
      render_error("予算または配属人数が空のままでは投資できません")
      return
    end
    if params[:investment][:market_id].to_i == 0
      render_error("投資する事業部を選択してください")
      return
    end
    if @team.investments.any?
      if @team.investments.count / 18 >= 10
        render_error("ゲーム終了です")
        return
      end
    end
    ActiveRecord::Base.transaction do
      @team.markets.order(:market_master_id).each do |market|
        if params[:investment][:market_id].to_i == market.id
          investment = Investment.new(investment_params)
        else
          investment = Investment.new(market_id: market.id, budget: 0, assigning: 0)
        end
        investment.team_id = params[:team_id]
        if investment.save!
          investment.calculate_team_status # calc_fund, calc_employee, calc_novice
          investment.calculate_market_status
          investment.save_history
        else
          render_error('保存に失敗しました')
          return
        end
      end
    end
    redirect_to team_path(params[:team_id]), notice: 'Success!'
  end
  
  private
  def investment_params
    params.require(:investment).permit(:budget, :assigning,:market_id)
  end

  def render_error(message)
    @investment = Investment.new
    @use_histories = @team.histories.where(market_id: @team.markets.last.id)
    flash[:alert] = message
    render 'teams/show'
  end
end