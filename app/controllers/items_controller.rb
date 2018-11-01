class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      @items = Item.where(category: params[:category])
      @items_sorted = @items.near(params[:query], params[:radius].to_i)
      raise
    else
      @items = Item.all
    end
  end


end
