class History < ApplicationRecord
  belongs_to :team
  belongs_to :investment
  belongs_to :market
end
