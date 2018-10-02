FactoryBot.define do
  factory :wallet do
    address { FFaker::Guid }
  end
end
