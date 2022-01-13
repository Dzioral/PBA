class MessagesController < ApplicationController
  before_action :authenticate_user!, :set_chat

  def create
    @message = @chat.messages.create! message_params

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @chat }
    end
  end

  private

  def set_chat
    @chat = Chat.find params[:chat_id]
  end

  def message_params
    params.require(:message).permit(:content).merge(sender_id: current_user.id)
  end
end