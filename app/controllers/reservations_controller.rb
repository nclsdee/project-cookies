class ReservationsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @reservation = Reservation.new
  end

  def create
    @item = Item.find(params[:item_id])

    @reservation = Reservation.new(reservation_params)

    @reservation.host_id = @item.user_id
    @reservation.customer_id = current_user.id
    @reservation.item_id = @item.id

    if @reservation.save!
      redirect_to items_path
    else
      raise
    end

  end

  private
  def reservation_params
    params.require(:reservation).permit(:date_from, :date_to, :host_id, :item_id, :customer_id)
  end
end
