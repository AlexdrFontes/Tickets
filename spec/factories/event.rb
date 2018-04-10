FactoryBot.define do
  factory :event do
    name 'Web Developers Festival'
    timezone 'Europe/Lisbon'
    start_at { Time.zone.today + 20.days }
    end_at { Time.zone.today + 25.days }
    venue
  end
end
