class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :listing

    def displayUser
        return self.user
    end


    def getListingInfo
        return self.listing
    end
end
