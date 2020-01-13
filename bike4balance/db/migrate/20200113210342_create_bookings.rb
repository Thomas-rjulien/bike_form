class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :email
      t.string :name
      t.text :heights
      t.text :comment
      t.date :checkin
      t.date :checkout
      t.integer :citybike
      t.integer :trekking
      t.integer :cyclo
      t.integer :electric

      t.timestamps
    end
  end
end
