require "open-uri"

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
location: "Norton, Oxfordshire, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250690/Cabin-Bnb/photo-1551066167-a48a90fdce31_ftpd6k.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Newquay, Cornwall, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250665/Cabin-Bnb/photo-1516402707257-787c50fc3898_liuvwj.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Dolgellau, Gwynedd, Wales"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250619/Cabin-Bnb/photo-1568729937315-2ef5ee9cf4f2_q65wid.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Cranleigh, Surrey, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250569/Cabin-Bnb/photo-1542643299-be5d00d22db3_mvtbk5.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Beddgelert, Snowdonia, Wales"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249742/Cabin-Bnb/photo-1523316562393-0f85bf7cdf7a_epb9kk.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
location: "Selkirk, Scottish Borders, Scotland"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250515/Cabin-Bnb/photo-1520984032042-162d526883e0_j6rwbx.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250458/Cabin-Bnb/photo-1542718610-a1d656d1884c_ig8ayv.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250337/Cabin-Bnb/photo-1470770841072-f978cf4d019e_z7tpvy.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Lake District, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250259/Cabin-Bnb/photo-1612811481123-90e015fb9dfd_cgef79.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Merthyr Mawr, Wales"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249692/Cabin-Bnb/photo-1613344145786-db30e406f945_t8sop7.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
location: "Kirkby Stephen, Cumbria, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250190/Cabin-Bnb/photo-1551649123-4c2d37b7fed2_fggqsk.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250102/Cabin-Bnb/photo-1571977547180-de7d159f7104_w5ui3l.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Bury St.Edmunds, Suffolk, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250072/Cabin-Bnb/photo-1475087542963-13ab5e611954_pnwsy0.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Ribble Valley, Lancashire, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614250012/Cabin-Bnb/photo-1499696010180-025ef6e1a8f9_ok6g9i.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Solva, Wales"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249547/Cabin-Bnb/photo-1449158743715-0a90ebb6d2d8_jb2npd.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
location: "Wadebridge, Cornwall, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249966/Cabin-Bnb/photo-1542314820-e04ce1d3d81a_bhbxzy.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249921/Cabin-Bnb/photo-1596999271637-45d1accb9897_hqztpv.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Hemingfod, Cambridgeshire, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249860/Cabin-Bnb/photo-1544103200-878e7cca8c91_gw0nfl.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Tarporley, Cheshire, England"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249837/Cabin-Bnb/photo-1533603907695-595cfc70df0d_phb9sa.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
cabin.save!
puts "Saving cabin"

cabin = Cabin.new(
user_id: user.id,
name: Faker::Address.community,
description: "A remote cabin out in the idyllic countryside.",
price_per_night: 50.upto(100).to_a.sample,
number_of_guests: 2.upto(8).to_a.sample,
location: "Talybont on Usk, Wales"
)
file = URI.open('https://res.cloudinary.com/arenatofte/image/upload/v1614249621/Cabin-Bnb/photo-1537197518227-a36efeafd477_wy164w.jpg')
cabin.photo.attach(io: file, filename: 'cabin.jpg', content_type: 'image/jpg')
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




