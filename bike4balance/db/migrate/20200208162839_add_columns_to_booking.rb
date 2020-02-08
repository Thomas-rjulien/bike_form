class AddColumnsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :one_day_tour, :string
    add_column :bookings, :multi_day_tour, :string
  end
end
