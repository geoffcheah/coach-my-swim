class AddVideoToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :video, :string
  end
end
