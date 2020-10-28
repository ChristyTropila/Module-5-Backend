class ListingsController < ApplicationController

    def index
        @listings=Listing.all
        render json: @listings
    end

    def create
        @listing=Listing.create!(user_id: params[:user_id], lat: params[:lat], lng: params[:lng], available: params[:available])
        render json: @listing
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
