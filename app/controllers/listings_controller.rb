class ListingsController < ApplicationController

    def index
        @listings=Listing.all
        render json: @listings
    end

    def create
    #     results=Geocoder.search(params[:address])
    #     lat=results.first.coordinates[0]
    #     lng=results.first.coordinates[1]

    #    @listing=Listing.create!(user_id: params[:user_id], lat: lat, lng: lng, available: params[:available])
     @listing=Listing.create!(user_id: params[:user_id], lat: params[:lat], lng: params[:lng], available: params[:available])
     if @listing.valid?
         render json: @listing
      else
          render json: {error: "Error"}, status: 422
     end
    end
    

    def update
        @listing=Listing.find(params[:id])
        @listing.update(available: false)
        render json: @listing
    end
end

private

def listing_params
    params.permit(:lat, :lng, :user_id, :available)
end
