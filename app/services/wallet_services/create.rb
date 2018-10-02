module WalletServices
  class Create < ApplicationService
    def call(user, wallet_params)
      Wallet.find_or_create_by!(wallet_params).users << user
    end
  end
end
