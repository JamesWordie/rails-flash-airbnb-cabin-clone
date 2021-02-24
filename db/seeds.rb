puts "Emptying database..."

User.destroy_all if Rails.env.development?
Cabin.destroy_all if Rails.env.development?
Booking.destroy_all if Rails.env.development?

puts "Seeding database..."

10.times do
  user = User.new(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: "123456"
    )

  user.save!
  puts "Saving user"

  (1..4).to_a.sample.times do
    cabin = Cabin.new(
    user_id: user.id,
    name: Faker::Address.community,
    description: "A remote cabin out in the idyllic countryside.",
    price_per_night: 50.upto(100).to_a.sample,
    number_of_guests: 2.upto(8).to_a.sample,
    location: Faker::Nation.capital_city
    )
  cabin.save!
  puts "Saving cabin"

  booking_start = Faker::Date.forward(days: 365)
  booking_end = booking_start + 1.upto(30).to_a.sample

  booking = Booking.new(
    start_date: booking_start,
    end_date: booking_end,
    user_id: user.id,
    cabin_id: cabin.id
    )
  booking.save!
  puts "Saving booking"
  end
end



