class Investment < ApplicationRecord
  belongs_to :team
  belongs_to :market

  def set_column(team)
    fund = cal_fund(team)
    employee = cal_employee(team)
    novice = cal_novice(team)
    earning = cal_earning(team)
    recruiting = cal_recruiting(team)
  end
  
  def cal_earning
    if market_id == 0
      sum = 0
      return sum
    elsif market_id == 1
      sum = 100*budget + assigning
      return sum
    elsif market_id == 2
      sum = budget + 100*assigning
      return sum
    else
      sum = budget + assigning
      return sum
    end
  end
  
  def cal_recruiting
    if market_id == 0
      sum = (budget*0.05).to_i
      return sum
    else
      sum = 0
      return sum
    end
  end
  
  def cal_fund(team)
    history = team.history.last
    sum = cal_earning - budget
    return sum
  end
  
  def cal_employee
    sum = cal_recruiting
    return sum
  end
  
  def cal_novice
    sum = cal_recruiting
    return sum
  end
  
  def cal_markert_adj
    if market_id == 1
      return 1.5
    elsif market_id == 2
      return 3
    else
      return 100
    end
  end
end
