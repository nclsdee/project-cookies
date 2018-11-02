class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @items = Item.where(category: params[:category])
      @items_sorted = @items.near(params[:query], params[:radius].to_i)
    else
      @items = Item.all
    end


  @items = Item.where.not(latitude: nil, longitude: nil)

   @markers = @items.map do |item|
      {
      lat: item.latitude,
      lng: item.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
  end
  raise
end
  def show
    @item = Item.find(params[:id])
  end
end

