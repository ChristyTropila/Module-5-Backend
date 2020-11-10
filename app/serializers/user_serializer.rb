class UserSerializer < ActiveModel::Serializer

    attributes :id, :name, :email, :contact, :password_digest, :listings, :reservations, :conversations_as_sender, :conversations_as_receiver
    has_many :listings
    has_many :reservations
    
end
