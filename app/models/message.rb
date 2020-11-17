class Message < ApplicationRecord

  belongs_to :user
  belongs_to :conversation

  def sender
    self.user.name
  end

  def message_for_broadcast
    {
      id: self.id,
      content: self.content,
      sender: self.sender
    }
  end


end
