class User < ApplicationRecord
  #belongs_to :team, optional: true
  has_many :user_teams
  has_many :teams, through: :user_teams
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
