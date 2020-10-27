class ReservationSerializer < ActiveModel::Serializer
attributes :user_id, :listing_id, :booking_time, :displayUser
end