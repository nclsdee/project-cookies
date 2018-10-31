class AddReservationToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :reservation, foreign_key: true
  end
end
