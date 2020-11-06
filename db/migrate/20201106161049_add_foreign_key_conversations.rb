class AddForeignKeyConversations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :conversations, :users, column: :sender_id
  end
end
