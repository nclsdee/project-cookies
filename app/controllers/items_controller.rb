class ItemsController < ApplicationController


def index
  @items = Item.all
end

def show
     if params[:query].present?
      @items = Item.where(category: params[:query])
    else
      @items = Item.all
    end
end
end