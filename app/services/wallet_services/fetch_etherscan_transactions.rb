module WalletServices
  class FetchEtherscanTransactions < ApplicationService
    def call(wallet_address)
      synchronize_wallet_transactions(wallet_address)
    end

    private

    def synchronize_wallet_transactions(wallet_address)
      result = EtherscanAPI::GetWalletTransactions.call(wallet_address)[:result]
      Wallet.find_by(address: wallet_address).update(transactions: result.count)
      result.each_with_object([]) do |entry, transactions|
        transactions << {
          from: entry[:from],
          to: entry[:to],
          value: entry[:value].to_i,
          fee: entry[:gas].to_i * entry[:gasPrice].to_i,
          timestamp: entry[:timeStamp]
        }
      end
    end
  end
end
