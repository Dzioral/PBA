class Chat < ApplicationRecord
  has_many :messages
  has_many :chat_participants
  has_many :users, through: :chat_participants
end
