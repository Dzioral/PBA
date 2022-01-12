class User < ApplicationRecord
  has_many :chat_participants
  has_many :chats, through: :chat_participants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
