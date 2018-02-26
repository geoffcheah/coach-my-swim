class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.text :description
      t.text :feedback

      t.timestamps
    end
  end
end
