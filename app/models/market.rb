class Market < ApplicationRecord
  belongs_to :team
  belongs_to :market_master
  has_many :histories, dependent: :destroy
  has_many :investments, dependent: :destroy

  def name
    market_master.market_name
  end
end
