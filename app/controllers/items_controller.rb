class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @items = Item.where(category: params[:category])
      @items_sorted = @items.near(params[:query], params[:radius].to_i)
      raise
    else
      @items = Item.all
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:description, :price, :category, :address, :image_up, :user_id, :title)
  end
end
