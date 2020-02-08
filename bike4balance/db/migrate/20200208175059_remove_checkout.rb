class RemoveCheckout < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :checkout, :number_of_days
  end
end
