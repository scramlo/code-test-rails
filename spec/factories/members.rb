# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  subscription_id :integer
#
# Indexes
#
#  index_members_on_subscription_id  (subscription_id)
#

FactoryGirl.define do
  factory :member do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
  end
end
