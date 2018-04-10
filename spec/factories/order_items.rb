FactoryBot.define do
  factory :order_item do
    ticket
    order
    quantity 10
    price 15000
  end
end
