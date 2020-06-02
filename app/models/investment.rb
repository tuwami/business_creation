class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market
  has_one :history

  validates :budget, presence: true
  validates :assigning, presence: true

  def save_history
    History.create!(investment_id: id,
                    fund: team.current_fund,
                    employee: team.current_employee,
                    novice: team.current_novice,
                    earning: market.market_earning,
                    recruiting: market.market_recruiting,
                    each_market_employee: market.market_employee,
                    team_id: team.id,
                    market_id: market_id)
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
  
  EATH_MARKET_VALUES_B = [0.182,4.20,1.0137]
  EATH_MARKET_VALUES_C = [0.094,3.80,1.0028]
  EATH_MARKET_VALUES_D = [0.086,7.59,1.0050]
  EATH_MARKET_VALUES_E = [0.055,2.35,1.0084]
  EATH_MARKET_VALUES_F = [0.164,4.85,1.0108]
  EATH_MARKET_VALUES_G = [0.05,1.72,0.9986]
  EATH_MARKET_VALUES_H = [0.152,2.36,1.0074]
  EATH_MARKET_VALUES_I = [0.05,6.44,1.0034]
  EATH_MARKET_VALUES_J = [0.168,4.59,1.01]
  EATH_MARKET_VALUES_K = [0.084,5.37,1.0013]
  EATH_MARKET_VALUES_L = [0.086,3.20,1.0041]
  EATH_MARKET_VALUES_M = [0.113,1.69,1.0016]
  EATH_MARKET_VALUES_N = [0.149,4.21,1.0108]
  EATH_MARKET_VALUES_O = [0.010,0.84,0.9994]
  EATH_MARKET_VALUES_P = [0.102,7.62,1.0116]
  EATH_MARKET_VALUES_Q = [0.074,8.08,1.0023]
  EATH_MARKET_VALUES_R = [0.020,0.03,1.0025]
  
  MARKET_VALUES = [EATH_MARKET_VALUES_B, EATH_MARKET_VALUES_C, EATH_MARKET_VALUES_D, 
                  EATH_MARKET_VALUES_E, EATH_MARKET_VALUES_F, EATH_MARKET_VALUES_G, 
                  EATH_MARKET_VALUES_H, EATH_MARKET_VALUES_I, EATH_MARKET_VALUES_J, 
                  EATH_MARKET_VALUES_K, EATH_MARKET_VALUES_L, EATH_MARKET_VALUES_M, 
                  EATH_MARKET_VALUES_N, EATH_MARKET_VALUES_O, EATH_MARKET_VALUES_P, 
                  EATH_MARKET_VALUES_Q, EATH_MARKET_VALUES_R]
  
  def cal_params_market_earning
    if market.market_master_id = 1
      return 0
    else
      (2..18).each do |num|
        if num == market.market_master_id
          return cal_market_earning(MARKET_VALUES[num - 2])
        end
      end
    end
  end
  
  # def cal_params_market_earning
  #   if market.market_master_id == 1
  #     return 0
  #   elsif market.market_master_id == 2
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.182,4.20,1.0137)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.182,4.20,1.0137)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.182,4.20,1.0137)
  #     else
  #       ret_val = cal_market_earning(0.182,4.20,1.0137)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 3
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.094,3.80,1.0028)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.094,3.80,1.0028)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.094,3.80,1.0028)
  #     else
  #       ret_val = cal_market_earning(0.094,3.80,1.0028)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 4
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.086,7.59,1.0050)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.086,7.59,1.0050)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.086,7.59,1.0050)
  #     else
  #       ret_val = cal_market_earning(0.086,7.59,1.0050)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 5
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.055,2.35,1.0084)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.055,2.35,1.0084)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.055,2.35,1.0084)
  #     else
  #       ret_val = cal_market_earning(0.055,2.35,1.0084)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 6
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.164,4.85,1.0108)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.164,4.85,1.0108)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.164,4.85,1.0108)
  #     else
  #       ret_val = cal_market_earning(0.164,4.85,1.0108)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 7
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.05,1.72,0.9986)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.05,1.72,0.9986)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.05,1.72,0.9986)
  #     else
  #       ret_val = cal_market_earning(0.05,1.72,0.9986)
  #     end
  #   elsif market.market_master_id == 8
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.152,2.36,1.0074)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.152,2.36,1.0074)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.152,2.36,1.0074)
  #     else
  #       ret_val = cal_market_earning(0.152,2.36,1.0074)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 9
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.05,6.44,1.0034)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.05,6.44,1.0034)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.05,6.44,1.0034)
  #     else
  #       ret_val = cal_market_earning(0.05,6.44,1.0034)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 10
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.168,4.59,1.01)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.168,4.59,1.01)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.168,4.59,1.01)
  #     else
  #       ret_val = cal_market_earning(0.168,4.59,1.01)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 11
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.084,5.37,1.0013)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.084,5.37,1.0013)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.084,5.37,1.0013)
  #     else
  #       ret_val = cal_market_earning(0.084,5.37,1.0013)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 12
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.086,3.20,1.0041)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.086,3.20,1.0041)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.086,3.20,1.0041)
  #     else
  #       ret_val = cal_market_earning(0.086,3.20,1.0041)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 13
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.113,1.69,1.0016)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.113,1.69,1.0016)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.113,1.69,1.0016)
  #     else
  #       ret_val = cal_market_earning(0.113,1.69,1.0016)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 14
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.149,4.21,1.0108)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.149,4.21,1.0108)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.149,4.21,1.0108)
  #     else
  #       ret_val = cal_market_earning(0.149,4.21,1.0108)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 15
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.010,0.84,0.9994)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.010,0.84,0.9994)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.010,0.84,0.9994)
  #     else
  #       ret_val = cal_market_earning(0.010,0.84,0.9994)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 16
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.102,7.62,1.0116)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.102,7.62,1.0116)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.102,7.62,1.0116)
  #     else
  #       ret_val = cal_market_earning(0.102,7.62,1.0116)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 17
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.074,8.08,1.0023)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.074,8.08,1.0023)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.074,8.08,1.0023)
  #     else
  #       ret_val = cal_market_earning(0.074,8.08,1.0023)
  #     end
  #     return ret_val
  #   elsif market.market_master_id == 18
  #     if market.market_employee < 10
  #       ret_val = cal_market_earning(0.020,0.03,1.0025)
  #     elsif market.market_employee < 500
  #       ret_val = cal_market_earning(0.020,0.03,1.0025)
  #     elsif market.market_employee < 1000
  #       ret_val = cal_market_earning(0.020,0.03,1.0025)
  #     else
  #       ret_val = cal_market_earning(0.020,0.03,1.0025)
  #     end
  #     return ret_val
  #   end
  # end
  
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
    ret_val = Math.log(1 + ((budget*a)*((market.market_employee + assigning)*b*rand(5000..15000)) / 10000))
    return ret_val
  end

  def cal_market_earning(a,b,c) #a = 資本の効率性,b = 人的リソースの効率性,c = 市場の成長性
    if market.market_employee < 10
      ret_val = Math.log(1 + (MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2]*1.0)*((Math.sqrt(market.balance + budget)*a)*(Math.sqrt((market.market_employee + assigning)* b)))* c * rand(9000..11000)))
    elsif market.market_employee < 50 
      ret_val = Math.log(1 + (MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2]*1.5)*((Math.sqrt(market.balance + budget)*a)*(Math.sqrt((market.market_employee + assigning)* b)))* c * rand(9000..11000)))
    elsif market.market_employee < 250
      ret_val = Math.log(1 + (MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2]*2.0)*((Math.sqrt(market.balance + budget)*a)*(Math.sqrt((market.market_employee + assigning)* b)))* c * rand(9000..11000)))
    elsif market.market_employee < 1250
      ret_val = Math.log(1 + (MARKETSIZE[market.market_master_id-2]*(MARKETSHARE[market.market_master_id-2]*3.0)*((Math.sqrt(market.balance + budget)*a)*(Math.sqrt((market.market_employee + assigning)* b)))* c * rand(9000..11000)))
    end
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

