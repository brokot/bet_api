class Sport < ApplicationRecord
  belongs_to :user
  has_many :bets

  validates :name, presence: true
end
