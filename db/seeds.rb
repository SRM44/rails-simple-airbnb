puts 'creating flats'

10.times do |flat|
  new_flat = Flat.new(
    name:    Faker::Games::ElderScrolls.race,
    address: Faker::Games::ElderScrolls.city,
    description: Faker::Lorem.paragraph,
    price: rand(50..130),
    guests: rand(2..8)
  )
  new_flat.save!
end

puts 'ok !'
