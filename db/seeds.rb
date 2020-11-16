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
Conversation.destroy_all
Message.destroy_all

User.reset_pk_sequence
Listing.reset_pk_sequence
Reservation.reset_pk_sequence
Review.reset_pk_sequence
Message.reset_pk_sequence
Conversation.reset_pk_sequence





christy=User.create(name:"christy", email: "test@gmail.com", password: "123", age: 34, contact: "39393939")
joby=User.create(name:"joby", email: "test@gmail.com", password: "123", age: 34, contact: "39393939")

message1=Message.create(conversation_id: 1, content: "helloooooo", user_id: christy.id)