class Wallet < ApplicationRecord
  has_many :user_wallets, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :users, through: :user_wallets

  validates :address, presence: true, uniqueness: true

  def ethereum_balance
    balance/10.0**18
  end
end
