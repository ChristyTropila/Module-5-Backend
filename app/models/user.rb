class User < ApplicationRecord
    has_many :reservations
    has_many :listings
    has_many :reviews

    validates_uniqueness_of :email

    has_secure_password



   # has_many :listings, through: :reviews

    #  def getListingReservation
    #     self.listings.map do |list|
    #    byebug
    #     end
    #  end
end
