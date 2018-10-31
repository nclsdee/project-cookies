class AddItemToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :item, foreign_key: true
  end
end
