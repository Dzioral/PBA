class CreateChatParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_participants do |t|
      t.integer :chat_id
      t.integer :user_id
      t.timestamps
    end
  end
end
