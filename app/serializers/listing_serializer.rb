class ListingSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :lat, :lng, :available
    belongs_to :user
    has_many :reservations
    has_many :reviews
   
end