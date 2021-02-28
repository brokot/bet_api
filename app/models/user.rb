class User < ApplicationRecord
  has_many :bets
  has_many :sports

  validates :name, presence: true
end
