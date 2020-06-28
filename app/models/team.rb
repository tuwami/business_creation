class Team < ApplicationRecord
  has_many :markets, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :investments

  has_many :user_teams
  has_many :users,through: :user_teams
  
  validates :name, presence: true

end
