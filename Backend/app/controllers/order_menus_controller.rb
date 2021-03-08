class OrderMenusController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
      order_menus = OrderMenu.all
      render json: order_menus
  end

  def show
    order_menu = OrderMenu.find_by(id:params[:id])
    render json: order_menu
  end

  def create
    order = Order.find_or_create_by(:user_id => current_user.id, :is_ordered => false) {|order| order.order_number = Order.last.order_number + 1}
    @order_menu = OrderMenu.new(order_menu_params)
    @order_menu.order_id = order.id
    if (@order_menu.save)
      render json: @order_menu
    else
      render json: "Order Error!"
    end

  end

  def destroy
      order_menu = OrderMenu.find_by(id: params[:id])
      order_menu.destroy
      render json: {message: 'Your account has been deleted'}
  end

  private

  def order_menu_params
    params.permit(:menu_item_id)
  end

end
