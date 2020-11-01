class ListingsController < ApplicationController

    def index
        @listings=Listing.all
        render json: @listings
    end

    def create
      byebug
     @listing=Listing.create!(user_id: params[:user_id], lat: params[:lat], lng: params[:lng], available: params[:available])
    byebug
     if @listing.valid?
         render json: @listing
      else
          render json: {error: "Error"}, status: 422
     end
     byebug
    end
    

 def update
        @listing=Listing.find(params[:id])
        @listing.update(available: !@listing.available)
        render json: @listing
    end


  def destroy
    @reservation=Reservation.find_by(listing_id: params[:id])
    if @reservation
        render json: {error: "CANNOT CHANGE STATUS WHILE RESERVATION IS BOOKED"},status: 422
    else
        @listing=Listing.find(params[:id])
        @listing.destroy
        render json: @listing
    end
  end
  


end

private

def listing_params
    params.permit(:lat, :lng, :user_id, :available, :address)
end
