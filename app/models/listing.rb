class Listing < ApplicationRecord
    belongs_to :user
    has_many :reservations
    has_many :users, through: :reservations
    has_many :reviews
    has_many :users, through: :reviews

    geocoded_by :address
    after_validation :geocode



    
end
