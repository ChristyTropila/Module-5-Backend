class ListingSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :lat, :lng, :available, :reservations, :getNameForReserv, :address
    belongs_to :user
    has_many :reservations
    has_many :reviews
   
end