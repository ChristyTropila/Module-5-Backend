class AddUserToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :user, index: true
  end
end
