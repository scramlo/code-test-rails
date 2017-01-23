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

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "has a valid factory" do
    expect(create(:subscription)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:subscription, name: nil)).to be_invalid
  end

  it "is invalid without an price" do
    expect(build(:subscription, price: nil)).to be_invalid
  end
end
