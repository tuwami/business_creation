class Team < ApplicationRecord
  has_many :histories, dependent: :destroy
  
  validates :name, presence: true
end
