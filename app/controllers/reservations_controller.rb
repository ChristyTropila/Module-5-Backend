class ReservationsController < ApplicationController
  before_action :authorized, only: [:create, :destroy, :update]


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

 def destroy
      @reservation=Reservation.find(params[:id])
      @listing=Listing.all.find(@reservation.listing_id)
      @user=User.all.find(@reservation.user_id)
      @listing.update(available: true)
      @reservation.destroy
      render json: @reservation
 end



private

def reservation_params
    params.permit(:user_id, :listing_id, :booking_time)
end


end