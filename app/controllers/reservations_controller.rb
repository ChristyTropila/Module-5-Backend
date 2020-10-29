class ReservationsController < ApplicationController

def index
    @reservations=Reservation.all
    render json: @reservations
end



def create
    @reservation=Reservation.create!(user_id: params[:user_id], listing_id: params[:listing_id], booking_time: params[:booking_time])
      if @reservation.valid?  
        render json: @reservation
      else
        render json: {error: "TRY AGAIN"}, status: 422

      end
end

private

def reservation_params
    params.permit(:user_id, :listing_id, :booking_time)
end


end