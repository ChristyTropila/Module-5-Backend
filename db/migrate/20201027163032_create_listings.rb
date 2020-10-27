class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.belongs_to :user
      t.float :lat
      t.float :lng
      t.boolean :available

      t.timestamps
    end
  end
end
