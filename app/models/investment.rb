class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market
  has_one :history

  validates :budget, presence: true
  validates :assigning, presence: true

  def save_history
    History.create!(investment_id: id, fund: team.current_fund, employee: team.current_employee, novice: team.current_novice, earning: market.market_earning, recruiting: market.market_recruiting, each_market_employee: market.market_employee, team_id: team.id, market_id: market_id)
  end

  def calculate_team_status
    team.current_fund = cal_fund
    team.current_employee = cal_employee
    team.current_novice = cal_novice
    team.save!
  end
  
  def calculate_market_status
    market.market_recruiting = cal_params_market_recruiting
    market.market_earning = cal_params_market_earning
    market.market_employee = cal_market_employee
    market.balance = cal_params_balance
    market.save!
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
      if market.market_employee < 10
        ret_val = cal_market_recruiting(5,5)
      elsif market.market_employee < 100
        ret_val = cal_market_recruiting(10,10)
      else
        ret_val = cal_market_recruiting(30,30)
      end
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
      if market.market_employee < 10
        ret_val = cal_market_earning(0.182,4.20,1.0137, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.182,4.20,1.0137, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.182,4.20,1.0137, 1.2)
      else
        ret_val = cal_market_earning(0.182,4.20,1.0137, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 3
      if market.market_employee < 10
        ret_val = cal_market_earning(0.094,3.80,1.0028, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.094,3.80,1.0028, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.094,3.80,1.0028, 1.2)
      else
        ret_val = cal_market_earning(0.094,3.80,1.0028, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 4
      if market.market_employee < 10
        ret_val = cal_market_earning(0.086,7.59,1.0050, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.086,7.59,1.0050, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.086,7.59,1.0050, 1.2)
      else
        ret_val = cal_market_earning(0.086,7.59,1.0050, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 5
      if market.market_employee < 10
        ret_val = cal_market_earning(0.055,2.35,1.0084, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.055,2.35,1.0084, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.055,2.35,1.0084, 1.2)
      else
        ret_val = cal_market_earning(0.055,2.35,1.0084, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 6
      if market.market_employee < 10
        ret_val = cal_market_earning(0.164,4.85,1.0108, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.164,4.85,1.0108, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.164,4.85,1.0108, 1.2)
      else
        ret_val = cal_market_earning(0.164,4.85,1.0108, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 7
      if market.market_employee < 10
        ret_val = cal_market_earning(0.05,1.72,0.9986, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.05,1.72,0.9986, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.05,1.72,0.9986, 1.2)
      else
        ret_val = cal_market_earning(0.05,1.72,0.9986, 1.5)
      end
    elsif market.market_master_id == 8
      if market.market_employee < 10
        ret_val = cal_market_earning(0.152,2.36,1.0074, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.152,2.36,1.0074, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.152,2.36,1.0074, 1.2)
      else
        ret_val = cal_market_earning(0.152,2.36,1.0074, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 9
      if market.market_employee < 10
        ret_val = cal_market_earning(0.05,6.44,1.0034, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.05,6.44,1.0034, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.05,6.44,1.0034, 1.2)
      else
        ret_val = cal_market_earning(0.05,6.44,1.0034, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 10
      if market.market_employee < 10
        ret_val = cal_market_earning(0.168,4.59,1.01, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.168,4.59,1.01, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.168,4.59,1.01, 1.2)
      else
        ret_val = cal_market_earning(0.168,4.59,1.01, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 11
      if market.market_employee < 10
        ret_val = cal_market_earning(0.084,5.37,1.0013, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.084,5.37,1.0013, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.084,5.37,1.0013, 1.2)
      else
        ret_val = cal_market_earning(0.084,5.37,1.0013, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 12
      if market.market_employee < 10
        ret_val = cal_market_earning(0.086,3.20,1.0041, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.086,3.20,1.0041, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.086,3.20,1.0041, 1.2)
      else
        ret_val = cal_market_earning(0.086,3.20,1.0041, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 13
      if market.market_employee < 10
        ret_val = cal_market_earning(0.113,1.69,1.0016, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.113,1.69,1.0016, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.113,1.69,1.0016, 1.2)
      else
        ret_val = cal_market_earning(0.113,1.69,1.0016, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 14
      if market.market_employee < 10
        ret_val = cal_market_earning(0.149,4.21,1.0108, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.149,4.21,1.0108, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.149,4.21,1.0108, 1.2)
      else
        ret_val = cal_market_earning(0.149,4.21,1.0108, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 15
      if market.market_employee < 10
        ret_val = cal_market_earning(0.010,0.84,0.9994, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.010,0.84,0.9994, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.010,0.84,0.9994, 1.2)
      else
        ret_val = cal_market_earning(0.010,0.84,0.9994, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 16
      if market.market_employee < 10
        ret_val = cal_market_earning(0.102,7.62,1.0116, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.102,7.62,1.0116, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.102,7.62,1.0116, 1.2)
      else
        ret_val = cal_market_earning(0.102,7.62,1.0116, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 17
      if market.market_employee < 10
        ret_val = cal_market_earning(0.074,8.08,1.0023, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.074,8.08,1.0023, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.074,8.08,1.0023, 1.2)
      else
        ret_val = cal_market_earning(0.074,8.08,1.0023, 1.5)
      end
      return ret_val
    elsif market.market_master_id == 18
      if market.market_employee < 10
        ret_val = cal_market_earning(0.020,0.03,1.0025, 0.8)
      elsif market.market_employee < 500
        ret_val = cal_market_earning(0.020,0.03,1.0025, 1.0)
      elsif market.market_employee < 1000
        ret_val = cal_market_earning(0.020,0.03,1.0025, 1.2)
      else
        ret_val = cal_market_earning(0.020,0.03,1.0025, 1.5)
      end
      return ret_val
    end
  end
  
  def cal_params_balance
    # cal_value = [0.3,0.3,0.5,0.95,0.4,0.95,0.4,0.95,0.3,0.3,0.3,0.3,0.3,0.3,0.8,0.9,0.5,0.3,0.3]
    # return cal_balance(cal_value[market.market_master_id])
    if market.market_master_id == 1
      return 0
    elsif market.market_master_id == 2
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 3
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 4
      ret_val = cal_balance(0.50)
      return ret_val
    elsif market.market_master_id == 5
      ret_val = cal_balance(0.95)
      return ret_val
    elsif market.market_master_id == 6
      ret_val = cal_balance(0.60)
      return ret_val
    elsif market.market_master_id == 7
      ret_val = cal_balance(0.95)
      return ret_val
    elsif market.market_master_id == 8
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 9
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 10
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 11
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 12
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 13
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 14
      ret_val = cal_balance(0.80)
      return ret_val
    elsif market.market_master_id == 15
      ret_val = cal_balance(0.90)
      return ret_val
    elsif market.market_master_id == 16
      ret_val = cal_balance(0.50)
      return ret_val
    elsif market.market_master_id == 17
      ret_val = cal_balance(0.30)
      return ret_val
    elsif market.market_master_id == 18
      ret_val = cal_balance(0.30)
      return ret_val
    end
  end

  def cal_market_recruiting(a,b) #a = 資本の効率性,b = 人的リソースの効率性
    ret_val = (Math.sqrt(budget*a)*(Math.sqrt((market.market_employee + assigning)*b)*rand(5000..15000))) / 10000
    return ret_val
  end

  def cal_market_earning(a,b,c,d) #a = 資本の効率性,b = 人的リソースの効率性,c = 市場の成長性,d = 事業の成長性
    ret_val = MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2]*d)*((Math.sqrt(market.balance + budget)*a)*(Math.sqrt((market.market_employee + assigning)* b)))* c * rand(9000..11000) / 3500
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

