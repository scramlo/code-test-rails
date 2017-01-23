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

require 'rails_helper'

RSpec.describe Member, type: :model do
  it "has a valid factory" do
    expect(create(:member)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:member, name: nil)).to be_invalid
  end

  it "is invalid without an email" do
    expect(build(:member, email: nil)).to be_invalid
  end
end
