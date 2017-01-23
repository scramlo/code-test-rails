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

class Subscription < ApplicationRecord
  has_many :members

  validates :name, :price, presence: true
end
