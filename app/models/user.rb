class User < ApplicationRecord
  has_many :user_wallets, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :wallets, through: :user_wallets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
