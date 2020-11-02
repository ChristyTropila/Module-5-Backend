class ReviewsController < ApplicationController

    def index
        @reviews=Review.all
        render json: @reviews
    end

    def create
        @review=Review.create!(listing_id: params[:listing_id], user_id: params[:user_id], review_text: params[:textarea], rating: params[:rating])
        
        @listing=Listing.all.find(params[:listing_id])
        render json: @listing
    end
end
