class Team < ApplicationRecord
  has_many :histories, dependent: :destroy
  has_many :users
  
  validates :name, presence: true
end
