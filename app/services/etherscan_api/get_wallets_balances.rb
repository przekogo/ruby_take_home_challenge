module EtherscanAPI
  class GetWalletsBalances < Base
    def call(wallets)
      Rails.cache.fetch("wallets_balances_#{wallets}", expires_in: 1.minute) do
        get("module=account&action=balancemulti&address=#{wallets.join(',')}&tag=latest")
      end
    end
  end
end
