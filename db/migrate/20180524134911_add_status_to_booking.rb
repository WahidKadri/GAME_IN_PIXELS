class AddStatusToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :string, default: "Pending"
  end
end
