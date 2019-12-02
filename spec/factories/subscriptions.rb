# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :subscription do
    name { ["Silver", "Gold", "Platinum"].sample }
    price { Faker::Number.decimal(2) }
  end
end
