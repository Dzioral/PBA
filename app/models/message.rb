class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :chat

  after_create_commit -> { broadcast_append_to chat }
end
