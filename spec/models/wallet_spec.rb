require 'rails_helper'

RSpec.describe Wallet, type: :model do
  context 'validations' do
    before { build(:wallet) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_uniqueness_of(:address) }
  end
end
