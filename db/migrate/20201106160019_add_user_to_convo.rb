class AddUserToConvo < ActiveRecord::Migration[6.0]
  def change
   add_column :conversations, :sender_id, :integer
   add_column :conversations, :receiver_id, :integer
  end
end
