class MessagesController < ApplicationController

    def index
        @messages=Message.all
        render json: @messages
    end


    def show
        @message=Message.find(params[:id])
        render json: @message
    end


    def create
        byebug
        message=Message.create!(user_id: params[:user_id], content: params[:content], conversation_id: params[:conversation_id])
        if message.valid?
        ActionCable.server.broadcast 'room_channel', MessageSerializer.new(message)
        end
      end
end
