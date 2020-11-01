class UserSerializer < ActiveModel::Serializer

    attributes :id, :name, :email, :contact, :password, :listings, :reservations
  
 


end
