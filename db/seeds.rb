# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all


Listing.destroy_all


User.reset_pk_sequence
Listing.reset_pk_sequence

test=User.create!(name: "christy", email: "test@test.com", password: "123", age: "29", contact: "371737373")
test2=User.create!(name: "Kim", email: "test2@test.com", password: "123", age: "19", contact: "467747473")

listing=Listing.create!(user_id: test.id, lat: "393.333", lng: "-73.324", available: true)
reserv=Reservation.create!(user_id: test2.id, listing_id: listing.id, booking_time: Time.strptime('06/30/2012 00:00', '%m/%d/%Y %H:%M'))