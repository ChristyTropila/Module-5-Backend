class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :listing
      t.belongs_to :user
      t.datetime :booking_time

      t.timestamps
    end
  end
end
