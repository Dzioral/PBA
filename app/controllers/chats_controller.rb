class ChatsController < ApplicationController
  before_action :authenticate_user!, :set_chat

  def index
  end

  def show
    @messages = @chat.messages
    @current_user_id = current_user.id
  end

  private

  def set_chat
    @chat = Chat.find(params[:id])
  end
end
