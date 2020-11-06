class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :sender, :receiver
    has_many :messages
end
