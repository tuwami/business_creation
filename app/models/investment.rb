class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market
  has_one :history

  validates :budget, presence: true
  validates :assigning, presence: true

  def save_history
    History.create!(investment_id: id,
                    fund: team.current_fund.to_f,
                    employee: team.current_employee,
                    novice: team.current_novice,
                    profit: team.current_profit.to_f,
                    earning: market.market_earning.to_f,
                    budget_earning: market.market_budget_earning.to_f,
                    balance_earning: market.market_balance_earning.to_f,
                    recruiting: market.market_recruiting,
                    each_market_employee: market.market_employee,
                    team_id: team.id,
                    market_id: market_id)
  end

  def calculate_team_status
    team.current_fund = cal_fund.to_f
    team.current_employee = cal_employee
    team.current_novice = cal_novice
    team.current_profit = cal_profit.to_f
    team.save!
  end

  def calculate_market_status
    market.market_recruiting = cal_params_market_recruiting
    market.market_budget_earning = cal_params_market_budget_earning.to_f
    market.market_balance_earning = cal_params_market_balance_earning.to_f
    market.market_earning = (market.market_budget_earning + market.market_balance_earning).to_s.to_d.floor(2).to_f
    market.market_employee = cal_market_employee
    market.balance = cal_params_balance
    market.save!
  end

  def cal_fund
    if team.histories.any?
      return ((team.histories.last.fund - budget + market.market_earning).to_f - (market.market_employee.to_f)*LABOURCOST).to_s.to_d.floor(2).to_f
    else
      return ((team.current_fund - budget + market.market_earning).to_f - (market.market_employee.to_f)*LABOURCOST).to_s.to_d.floor(2).to_f
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

  def cal_profit
    if team.histories.any?
      return (team.histories.last.fund - team.histories.last(18)[0].fund).to_s.to_d.floor(2).to_f
    else
      return ( 0 - budget).to_s.to_d.floor(2).to_f
    end
  end

  def cal_params_market_recruiting
    if market.market_master_id == 18
      return cal_market_recruiting(5,5)
    else
      return 0
    end
  end

  LABOURCOST = 0.3

  MARKETSIZE = [4.3,29.4,7.4,17.8,5.0,1.5,2.2,1.9,5.5,69.6,1.5,34.0,15.6,1.5,53.7,14.7,36.9]
  MARKETSHARE = [23.3,3.4,13.5,5.6,20.0,66.7,45.5,52.6,18.2,1.4,66.7,2.9,6.4,66.7,1.9,6.8,2.7]

  EATH_MARKET_VALUES_A = [10.2, 8.25, 1.0137]
  EATH_MARKET_VALUES_B = [9.40, 4.80, 1.0028]
  EATH_MARKET_VALUES_C = [8.65, 7.94, 1.0050]
  EATH_MARKET_VALUES_D = [5.50, 11.4, 1.0084]
  EATH_MARKET_VALUES_E = [13.4, 4.85, 1.0108]
  EATH_MARKET_VALUES_F = [5.21, 13.5, 0.9986]
  EATH_MARKET_VALUES_G = [15.2, 3.91, 1.0074]
  EATH_MARKET_VALUES_H = [8.93, 8.44, 1.0034]
  EATH_MARKET_VALUES_I = [13.8, 4.59, 1.0100]
  EATH_MARKET_VALUES_J = [8.40, 5.37, 1.0013]
  EATH_MARKET_VALUES_K = [8.61, 4.29, 1.0041]
  EATH_MARKET_VALUES_L = [7.43, 6.69, 1.0016]
  EATH_MARKET_VALUES_M = [14.9, 3.21, 1.0108]
  EATH_MARKET_VALUES_N = [5.97, 15.1, 0.9994]
  EATH_MARKET_VALUES_O = [10.2, 7.62, 1.0116]
  EATH_MARKET_VALUES_P = [7.40, 12.5, 1.0023]
  EATH_MARKET_VALUES_Q = [6.91, 7.21, 1.0025]

  MARKET_VALUES = [ EATH_MARKET_VALUES_A, EATH_MARKET_VALUES_B, EATH_MARKET_VALUES_C,
                    EATH_MARKET_VALUES_D, EATH_MARKET_VALUES_E, EATH_MARKET_VALUES_F,
                    EATH_MARKET_VALUES_G, EATH_MARKET_VALUES_H, EATH_MARKET_VALUES_I,
                    EATH_MARKET_VALUES_J, EATH_MARKET_VALUES_K, EATH_MARKET_VALUES_L,
                    EATH_MARKET_VALUES_M, EATH_MARKET_VALUES_N, EATH_MARKET_VALUES_O,
                    EATH_MARKET_VALUES_P, EATH_MARKET_VALUES_Q ]

  BALANCE_VALUES = [0.10,0.63,0.55,0.89,0.28,0.80,0.50,0.34,0.11,0.70,0.97,0.93,0.56,0.33,0.19,0.20,0.90]


  def cal_params_market_budget_earning
    if market.market_master_id == 18
      return 0
    else
      (1..17).each do |num|
        if num == market.market_master_id
          return cal_market_budget_earning(*MARKET_VALUES[num - 1]).to_s.to_d.floor(2).to_f
        end
      end
    end
  end

  def cal_params_market_balance_earning
    if market.market_master_id == 18
      return 0
    else
      (1..17).each do |num|
        if num == market.market_master_id
          return cal_market_balance_earning(*MARKET_VALUES[num - 1]).to_s.to_d.floor(2).to_f
        end
      end
    end
  end

  def cal_params_balance
    if market.market_master_id == 18
      return 0
    else
      (1..17).each do |num|
        if num == market.market_master_id
          return cal_balance(BALANCE_VALUES[num - 1])
        end
      end
    end
  end

  def cal_market_recruiting(a,b)  #a = 資本集約性,b = 労働集約性
    if budget*cal_market_employee < 100
      return Math.sqrt(budget*a*cal_market_employee*b / 3)
    else
      return Math.sqrt(budget*a*cal_market_employee*b*rand(5000..15000) / 30000)
    end
  end

  def cal_market_budget_earning(a,b,c) #a = 資本集約性,b = 労働集約性,c = 市場成長性
    investment_value = ((((budget**(0.5))*(a**3))**(0.51))*(((cal_market_employee**(0.6))*(b**2))**(0.49))*c/100).to_f
    return cal_market_earning(investment_value)
  end

  def cal_market_balance_earning(a,b,c) #a = 資本集約性,b = 労働集約性,c = 市場成長性
    investment_value = ((((market.balance**(0.5))*(a**3))**(0.51))*(((cal_market_employee**(0.6))*(b**2))**(0.49))*c/100).to_f
    return cal_market_earning(investment_value)
  end

  def cal_market_earning(a)
    if a < 231
      return ((MARKETSIZE[market.market_master_id-1]*MARKETSHARE[market.market_master_id-1])*(a**2)/1000).to_f
    elsif a < 369
      return ((MARKETSIZE[market.market_master_id-1]*MARKETSHARE[market.market_master_id-1])*(a)*rand(8000..12000)/100000 + 30).to_f
    else
      return ((MARKETSIZE[market.market_master_id-1]*MARKETSHARE[market.market_master_id-1])*(12*(Math.log10(1000*a)*rand(8000..12000)/10000))).to_f
    end
  end

  def cal_market_employee
    if market.market_master_id == 18
        if market.histories.any?
          return market.market_employee + assigning
        else
          return market.default_each_market_employee + assigning
        end
    else
      return market.market_employee + assigning
    end
  end

  def cal_balance(a)
    return ( market.balance + budget ) * a
  end
end
