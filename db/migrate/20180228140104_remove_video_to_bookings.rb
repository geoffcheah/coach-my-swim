class AddVideoToBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :video
  end
end
