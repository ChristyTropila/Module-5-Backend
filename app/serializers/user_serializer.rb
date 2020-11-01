class UserSerializer < ActiveModel::Serializer

    attributes :id, :name, :email, :contact, :password, :listings, :reservations
    has_many :listings
    has_many :reservations

end
