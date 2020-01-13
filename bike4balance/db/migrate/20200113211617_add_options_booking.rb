class AddOptionsBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :saddlebag, :boolean
    add_column :bookings, :insurance, :boolean
    add_column :bookings, :baby_chair, :boolean
    add_column :bookings, :spd_pedals, :boolean
    add_column :bookings, :hitch_bike_racks, :boolean
    add_column :bookings, :trunk_bike_rack, :boolean
  end
end
