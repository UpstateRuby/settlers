class Game < ActiveRecord::Base
  validates :name, presence: true
  has_many :game_users
  has_many :players, through: :game_users, source: :user
  has_many :comments
end
