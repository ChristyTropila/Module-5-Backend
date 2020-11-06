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
        if @convo
            render json: @convo
            ActionCable.server.broadcast 'room_channel', ConversationSerializer.new(@convo)
        else
        @conversation=Conversation.create!(sender_id: params[:sender_id], receiver_id: params[:receiver_id])
        render json: @conversation
        ActionCable.server.broadcast 'room_channel', ConversationSerializer.new(@conversation)
        end
    end


end
