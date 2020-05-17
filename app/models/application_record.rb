class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  validates :market_id, presence: true
  validates :budget, presence: true
  validates :recruiting, presence: true
end
