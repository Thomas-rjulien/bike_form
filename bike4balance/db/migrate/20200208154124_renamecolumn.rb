class Renamecolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :cyclo, :gravel
  end
end
