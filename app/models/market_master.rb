class MarketMaster < ApplicationRecord
  has_many :markets, dependent: :destroy
end
