class HomeController < ApplicationController
  def index
    @wallet_count = Wallet.where("balance > ?", 0).count
  end
end
