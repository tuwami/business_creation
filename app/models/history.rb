class History < ApplicationRecord
  belongs_to :team
  
  validates :market_id, presence: true
  validates :budget, presence: true
  validates :recruiting, presence: true
end
