class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @items = Item.where(category: params[:query])
    else
      @items = Item.all
    end
  end


  def show
    @item = Item.find(params[:id])
  end
end
