class AddSubscriptionIdToMembers < ActiveRecord::Migration[5.0]
  def change
    add_reference :members, :subscription, foreign_key: true
  end
end
