class ReservationSerializer < ActiveModel::Serializer
attributes :id, :user_id, :listing_id, :booking_time, :displayUser, :getListingInfo
end