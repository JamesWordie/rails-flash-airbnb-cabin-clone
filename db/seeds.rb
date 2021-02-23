puts "Emptying database..."

User.destroy_all
Cabin.destroy_all

puts "Seeding database..."

20.times do

  user = User.new(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: "123456"
    )

  user.save!
  puts "Saving user"

  cabin = Cabin.new(
    user_id: user.id,
    name: "#{user.first_name}'s cabin",
    description: "Really nice",
    price_per_night: 50.upto(100).to_a.sample,
    number_of_guests: 2.upto(8).to_a.sample,
    location: Faker::Nation.capital_city
    )

  cabin.save!
  puts "Saving cabin"
end
