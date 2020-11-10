class ConversationsController < ApplicationController

    def index
        @conversations=Conversation.all
        render json: @conversations
    end


    def show
        @conversation=Conversation.find(params[:id])
        render json: @conversation.messages
    end


    def create
        @convo=Conversation.find_by(sender_id: params[:sender_id], receiver_id: params[:receiver_id])
        @convo2=Conversation.find_by(sender_id: params[:receiver_id], receiver_id: params[:sender_id])

        if @convo 
            render json: @convo
            ActionCable.server.broadcast 'room_channel', ConversationSerializer.new(@convo)
        elsif @convo2
          render json: @convo2
          ActionCable.server.broadcast 'room_channel', ConversationSerializer.new(@convo2)
        else
        @conversation=Conversation.create!(sender_id: params[:sender_id], receiver_id: params[:receiver_id])
        render json: @conversation
        
        ActionCable.server.broadcast 'room_channel', ConversationSerializer.new(@conversation)
        end
    end

 

end
