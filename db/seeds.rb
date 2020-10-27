# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Listing.destroy_all
Reservation.destroy_all
Review.destroy_all

User.reset_pk_sequence
Listing.reset_pk_sequence
Reservation.reset_pk_sequence
Review.reset_pk_sequence

test=User.create!(name: "christy", email: "test@test.com", password: "123", age: "29", contact: "371737373")
test2=User.create!(name: "Kim", email: "test2@test.com", password: "123", age: "19", contact: "467747473")
test3=User.create!(name: "Bob", email: "test3@test.com", password: "123", age: "22", contact: "9933973")

test4=User.create!(name: "Sally", email: "test4@test.com", password: "123", age: "22", contact: "8333973")



listing=Listing.create!(user_id: test.id, lat: "393.333", lng: "-73.324", available: false)
reserv=Reservation.create!(user_id: test2.id, listing_id: listing.id, booking_time: Time.strptime('06/30/2012 00:00', '%m/%d/%Y %H:%M'))