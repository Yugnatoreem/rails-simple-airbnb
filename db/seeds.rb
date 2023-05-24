puts 'Cleaning database...'

Flat.destroy_all

puts 'Creating restaurants...'

flats = []

20.times do
  flats << {
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 20),
    price_per_night: rand(50..100),
    number_of_guests: rand(1..8)
  }
end

Flat.create(flats)

puts 'Finished!'
