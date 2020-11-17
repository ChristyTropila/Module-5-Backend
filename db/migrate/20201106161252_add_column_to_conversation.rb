class AddColumnToConversation < ActiveRecord::Migration[6.0]
  def change
    remove_column :conversations, :sender_id
  end
end
