class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :sender_id, null: false
      t.integer :chat_id, null: false
      t.text :content, null: false
    end
  end
end
