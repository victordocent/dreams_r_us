class AddColumnStatusInBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :status, :integer, default: 0, null: false
  end
end
