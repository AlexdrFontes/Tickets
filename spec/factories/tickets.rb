FactoryBot.define do
  factory :ticket do
    name "VIP"
    status "active"
    quantity 10
    price 10000
    event
  end
end
