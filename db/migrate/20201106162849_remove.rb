class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :conversations, :receiver_id
  end
end
