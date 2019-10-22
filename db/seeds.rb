require "faker"

1_000.times do 
	Restaurant.create(
		name: Faker::Movies::PrincessBride.character,
		address: Faker::Address.street_address,
		rating: rand(1..10)
	)
end