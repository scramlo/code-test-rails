# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subscriptions = [
  {
    name: "Silver",
    price: 50.00
  },
  {
    name: "Gold",
    price: 75.00
  },
  {
    name: "Platinum",
    price: 99.00
  }
]

Subscription.create(subscriptions)

10.times do
  FactoryGirl.create(:member, subscription_id: Subscription.pluck(:id).sample)
end
