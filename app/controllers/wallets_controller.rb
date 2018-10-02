class WalletsController < ApplicationController
  before_action :authenticate_user!

  def index
    WalletServices::SyncEtherscanBalances.call(current_user.wallets.pluck(:address))
    current_user.wallets.each do |w|
      WalletServices::FetchEtherscanTransactions.call(w.address)
    end
    @wallets = current_user.wallets
  end

  def show
    @currency = {
      multiplier: 1.0/10**18 * (
        params[:currency].present? ? SupportAPI::GetEthereumConversion.call(params[:currency]) : 1),
      symbol: params[:currency].present? ? params[:currency] : 'ETH'
    }
    @wallet = Wallet.find(params[:id])
    @transactions = WalletServices::FetchEtherscanTransactions.call(@wallet.address)
  end

  def new
  end

  def create
    WalletServices::Create.call(current_user, wallet_params)
    redirect_to wallets_index_path, flash: {notice: 'Successfully added.'}
  end


  private

    def wallet_params
      params.require(:wallet).permit(:address)
    end
end
