class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :end_date
      t.references :place, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
