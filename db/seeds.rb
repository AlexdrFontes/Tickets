# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.production?
  # let's create some data to fill the database
  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

  venue = Venue.create!(
    name: 'BLKO',
    address: 'Rua Cintura do Porto, Prédio B, 5º A, 1950-326 Lisboa',
    website: 'blko.co.uk'
  )

  Event.create!(
    name: 'Web Developers Festival',
    venue: venue,
    description: 'We web developers hang together and chat.',
    start_at: Time.zone.today + 20.days + 10.hours,
    end_at: Time.zone.today + 25.days + 20.hours,
    logo: File.new(Rails.root.join('spec', 'support', 'media', 'blko.png'))
  )
end
