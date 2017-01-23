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

class Member < ApplicationRecord
  belongs_to :subscription

  validates :name, :email, presence: true
end
