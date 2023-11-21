class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.timestamp :start_date
      t.timestamp :end_date
      t.float :total_price
      t.references :user, null: false, foreign_key: true
      t.references :dream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
