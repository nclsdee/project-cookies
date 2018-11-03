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

   @markers = @items_sorted.map do |item|
      {
      lat: item.latitude,
      lng: item.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
  end
end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to homepage_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def itemindex
    @items = Item.where(user_id: current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:description, :price, :category, :address, :image_up, :user_id, :title)
  end
end

