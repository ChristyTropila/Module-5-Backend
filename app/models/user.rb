class User < ApplicationRecord
    has_many :reservations
    has_many :listings
    has_many :reviews
   # has_many :listings, through: :reviews

    #  def getListingReservation
    #     self.listings.map do |list|
    #    byebug
    #     end
    #  end
end
