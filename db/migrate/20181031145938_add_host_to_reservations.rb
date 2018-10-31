class AddHostToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :host
  end
end
