class AddCustomerToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :customer
  end
end
