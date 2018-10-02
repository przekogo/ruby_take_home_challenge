require 'rails_helper'

describe WalletServices::Create do
  let(:user) { create(:user) }
  let(:wallet_address) { '0xEc690940081E780ae3310C88eb3f4C75622988eC' }

  let(:wallet_params) do
    { address: wallet_address }
  end

  subject { described_class.call(user, wallet_params) }

  context 'when attributes are valid' do
    it 'adds wallet to user' do
      expect{subject}.to change{user.wallets.count}.by(1)
    end
  end

  context 'when trying to add a wallet user already follows' do
    let!(:wallet) { create(:wallet, address: wallet_address) }

    it 'produces error flash message' do
      wallet.users << user
      expect{subject}.to raise_error(ActiveRecord::RecordNotUnique)
    end
  end

  context 'when attributes are invalid' do
    let(:wallet_address) { '' }

    it 'produces error flash message' do
      expect{subject}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
