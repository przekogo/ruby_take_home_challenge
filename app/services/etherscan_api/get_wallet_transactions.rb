module EtherscanAPI
  class GetWalletTransactions < Base
    def call(wallet_address)
      Rails.cache.fetch("wallet_transactions_#{wallet_address}", expires_in: 30.seconds) do
        get("module=account&action=txlist&address=#{wallet_address}&startblock=0&endblock=99999999&sort=asc")
      end
    end
  end
end
