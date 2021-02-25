puts "Emptying database..."

User.destroy_all if Rails.env.development?
Cabin.destroy_all if Rails.env.development?
Booking.destroy_all if Rails.env.development?

puts "Seeding database..."

user = User.new(
    first_name: "James",
    last_name: "Wordie",
    email: "james.wordie@me.com",
    password: "123456"
)
user.save!
puts "Saving user"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Chipping Norton, Oxfordshire, South East England"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Newquay, Cornwall, South West England"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Dolgellau, Gwynedd, North Wales"
)
cabin.save!
puts "Saving cabin"

2.times do
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

# booking_start = Faker::Date.forward(days: 365)
# booking_end = booking_start + 1.upto(30).to_a.sample

# booking = Booking.new(
#   start_date: booking_start,
#   end_date: booking_end,
#   user_id: user.id,
#   cabin_id: cabin.id
# )
# booking.save!
# puts "Saving booking"

user = User.new(
    first_name: "Jonathan",
    last_name: "Simpson",
    email: 'jonathan.simpson@me.com',
    password: "123456"
  )
user.save!
puts "Saving user"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Selkirk, Scottish Borders, South Scotland"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Shropshire, West Midlands"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Argyll & Bute, Highlands"
)
cabin.save!
puts "Saving cabin"

2.times do
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

user = User.new(
    first_name: "Matt",
    last_name: "Vile",
    email: "matt.vile@me.com",
    password: "123456"
  )
user.save!
puts "Saving user"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Kirkby Stephen, Cumbria, North West England"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Halesworth, Suffolk, East Anglia"
)
cabin.save!
puts "Saving cabin"

2.times do
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

user = User.new(
    first_name: "Per",
    last_name: "Jensen",
    email: "per.jensen@me.com",
    password: "123456"
  )
user.save!
puts "Saving user"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Wadebridge, Cornwall, South West England"
)
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Oban, Argyll & Bute, Highlands"
)
cabin.save!
puts "Saving cabin"

2.times do
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




