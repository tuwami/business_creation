class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market
  has_one :history

  def save_history
    History.create(investment_id: id, fund: team.current_fund, employee: team.current_employee, novice: team.current_novice, earning: market.market_earning, recruiting: market.market_recruiting, each_market_employee: market.market_employee, team_id: team.id, market_id: market_id)
  end

  def calculate_team_status
    team.current_fund = cal_fund
    team.current_employee = cal_employee
    team.current_novice = cal_novice
    team.save
  end
  
  def calculate_market_status
    market.market_recruiting = cal_params_market_recruiting
    market.market_earning = cal_params_market_earning
    market.market_employee = cal_market_employee
    market.balance = cal_params_balance
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
  
  def cal_params_market_recruiting
    if market.market_master_id == 1
      ret_val = cal_market_recruiting(10,10,0.1)
      return ret_val
    else
      return 0
    end
  end
  
  MARKETSIZE = [4.3,29.4,7.4,17.8,5.0,1.5,2.2,1.9,5.5,69.6,1.5,34.0,15.6,1.5,53.7,14.7,36.9]
  MARKETSHARE = [0.233,0.034,0.135,0.056,0.200,0.667,0.455,0.526,0.182,0.014,0.667,0.029,0.064,0.667,0.019,0.068,0.027]
  
  def cal_params_market_earning
    if market.market_master_id == 1
      return 0
    elsif market.market_master_id == 2
      ret_val = cal_market_earning(0.15,0.3,1.1, 10)
      return ret_val
    elsif market.market_master_id == 3
      ret_val = cal_market_earning(1.2,1.5,1.1, 10)
      return ret_val
    elsif market.market_master_id == 4
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 5
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 6
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 7
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 8
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 9
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 10
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 11
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 12
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 13
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 14
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 15
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 16
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 17
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    elsif market.market_master_id == 18
      ret_val = cal_market_earning(0.5,0.5,0.1, 10)
      return ret_val
    end
  end
  
  def cal_params_balance
    if market.market_master_id == 1
      return 0
    elsif market.market_master_id == 2
      ret_val = cal_balance(0.65)
      return ret_val
    elsif market.market_master_id == 3
      ret_val = cal_balance(0)
      return ret_val
    elsif market.market_master_id == 4
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 5
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 6
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 7
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 8
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 9
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 10
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 11
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 12
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 13
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 14
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 15
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 16
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 17
      ret_val = cal_balance(0.3)
      return ret_val
    elsif market.market_master_id == 18
      ret_val = cal_balance(0.3)
      return ret_val
      
    end
  end

  def cal_market_recruiting(a,b,c)
    ret_val = ((budget * a) * ((market.market_employee + assigning) * b) * c ) / rand(5000..15000) / 100
    return ret_val
  end

  def cal_market_earning(a,b,c,d) #a = 資本の効率性,b = 人的リソースの効率性,c = 市場の成長性,d = 事業の成長性
    ret_val = MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2] + d)*((market.balance + budget)* a + (market.market_employee + assigning)* b )* c * rand(9000..11000) / 100
    return ret_val
  end
  
  def cal_market_employee
    ret_val = market.market_employee + assigning
    return ret_val
  end
  
  def cal_balance(a)
    ret_val = ( market.balance + budget ) * a
    return ret_val
  end
end

