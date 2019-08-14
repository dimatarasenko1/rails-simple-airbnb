# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
10.times do
  Flat.create(name: Faker::Ancient.god,
              address: Faker::Address.full_address,
              description: Faker::GreekPhilosophers.quote,
              price_per_night: (0..1000).to_a.sample.to_f,
              number_of_guests: (0..7).to_a.sample)
end
