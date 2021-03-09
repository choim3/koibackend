class OrdersController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create, :update]

  def index
      orders = Order.all
      render json: orders
  end

  def show
    order = Order.find_by(id:params[:id])
    render json: order
  end

  def create
    order = Order.create(order_params)
    render json: order
  end

  def update
    byebug
      order = Order.find_by(id: params[:id])
      order.update(order_params)
      render json: order
  end

  private

  def order_params
    params.permit(:order_id, :is_ordered)
  end
end
