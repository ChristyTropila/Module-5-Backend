class User < ApplicationRecord
    has_many :reservations
    has_many :listings
    has_many :reviews
    validates_uniqueness_of :email

    has_many :conversations_as_sender, class_name: "Conversation", foreign_key: "sender_id"
    has_many :senders, through: :conversations_as_sender
  
    has_many :conversations_as_receiver, class_name: "Conversation", foreign_key: "receiver_id"
    has_many  :receivers, through: :conversations_as_receiver


    has_secure_password



   # has_many :listings, through: :reviews

    #  def getListingReservation
    #     self.listings.map do |list|
    #    byebug
    #     end
    #  end
end
