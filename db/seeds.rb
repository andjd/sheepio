

400.times do 
	print "S"
	Sheeple.create username: Faker::Name.first_name,
					email: Faker::Internet.email,
					hashed_and_salted_password: '1234'
end

3000.times do
	print "B"
	Bleet.create     text: Faker::Hipster.sentence[0...139],
					image_link: Faker::Avatar.image
end

10000.times do
	print "H"
	join = Hearding.create	sheeple_id: Random.rand(0...400),
							bleet_id: Random.rand(0...3000),
							created_at: Time.now - rand(0...1814400)	
end



