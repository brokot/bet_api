class Bet < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  enum status: %i(win loss pending)
  enum bet_type: %i(moneyline spread total)

  validates :odds, :wager, presence: true
end
