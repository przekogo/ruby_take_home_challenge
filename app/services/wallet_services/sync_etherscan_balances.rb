module WalletServices
  class SyncEtherscanBalances < ApplicationService
    def call(wallets)
      synchronize_wallets_balances(wallets)
    end

    private

    def synchronize_wallets_balances(wallets)
      EtherscanAPI::GetWalletsBalances.call(wallets)[:result].try(:each) do |entry|
        Wallet.find_by(address: entry[:account]).update(balance: entry[:balance])
      end
    end
  end
end
