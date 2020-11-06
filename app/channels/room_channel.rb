class RoomChannel < ApplicationCable::Channel

  def subscribed
   
   stream_from 'room_channel'
  end

  # def received(data)
  #   byebug
  #   transmit(data
  # end

  def unsubscribed
  raise NotImplementedError
  end

  def speak(data)
    byebug
  end

end