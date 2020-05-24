class Team < ApplicationRecord
  has_many :markets, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :investments
  has_many :users
  
  validates :name, presence: true
end
