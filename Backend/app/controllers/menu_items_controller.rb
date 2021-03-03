class MenuItemsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  
  def index
      menu_items = MenuItem.all
      render json: menu_items
  end

  def show
      menu_item = MenuItem.find_by(id: params[:id])
      render json: menu_item
  end

end
