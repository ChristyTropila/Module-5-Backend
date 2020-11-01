class Listing < ApplicationRecord
    belongs_to :user
    has_many :reservations
    has_many :users, through: :reservations
    has_many :reviews
    has_many :users, through: :reviews

    geocoded_by :address
    after_validation :geocode

     def getNameForReserv
       getUser=self.reservations.map do |reserv|
       reserv.user_id
     end
      user=User.all.find(getUser)
    return user
     end

    
end
