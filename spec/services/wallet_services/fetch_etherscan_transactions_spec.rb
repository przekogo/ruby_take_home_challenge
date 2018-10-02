require 'rails_helper'

describe WalletServices::FetchEtherscanTransactions do
  let(:wallet_address) { '0xEc690940081E780ae3310C88eb3f4C75622988eC' }
  let(:wallet) { create(:wallet, address: wallet_address) }
  let(:transactions_response) { etherscan_transaction_response }


  subject{ described_class.call(wallet_address) }

  before do
    wallet.save!
    allow(EtherscanAPI::GetWalletTransactions)
      .to receive(:call).and_return(transactions_response)
  end

  context 'when etherscan returns valid data' do
    it 'returns proper amount of transactions' do
      expect(subject.count).to eq(4)
    end

    it 'returns formatted transactions' do
      expect(subject.first).to eq(formatted_transaction_response)
    end
  end
end
