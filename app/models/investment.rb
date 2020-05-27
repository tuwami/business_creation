class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market
  has_one :history

  def save_history
    History.create(investment_id: id, fund: team.current_fund, employee: team.current_employee, novice: team.current_novice, earning: market.market_earning, recruiting: market.market_recruiting, team_id: team.id)
  end

  def calculate_team_status
    team.current_fund = cal_fund
    team.current_employee = cal_employee
    team.current_novice = cal_novice
    team.save
  end
  
  def calculate_market_status
    market.market_recruiting = cal_market_recruiting
    market.market_earning = cal_market_earning
    market.market_employee = cal_market_employee
    market.balance = cal_balance
    market.save
  end

  def cal_fund
    if team.histories.any?
      return team.histories.last.fund - budget + market.market_earning
    else
      return team.current_fund - budget + market.market_earning
    end
  end

  def cal_employee
    if team.histories.any?
      return team.histories.last.employee + market.market_recruiting
    else
      return team.current_employee + market.market_recruiting
    end
  end

  def cal_novice
    if team.histories.any?
      return team.histories.last.novice - assigning + market.market_recruiting
    else
      return team.current_novice - assigning + market.market_recruiting
    end
  end

  def cal_market_recruiting
    ret_val = (market.balance + budget) * (market.market_employee + assigning) / 1000 * rand(1000..9999)
    return ret_val
  end

  def cal_market_earning
    ret_val = (market.balance + budget) * (market.market_employee + assigning) * 0.3
    return ret_val
  end
  
  def cal_market_employee
    ret_val = market.market_employee + assigning
    return ret_val
  end
  
  def cal_balance
    ret_val = ( market.balance + budget ) * 0.5
    return ret_val
  end
end
