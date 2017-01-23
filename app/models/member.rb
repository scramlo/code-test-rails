# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Member < ApplicationRecord
  validates :name, :email, presence: true
end
