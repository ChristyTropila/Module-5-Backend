class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :listing
      t.string :review_text
      t.integer :rating

      t.timestamps
    end
  end
end
