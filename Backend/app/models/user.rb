class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :order_menus, through: :orders
  has_many :ordered_items, through: :order_menus, source: :menu_item
  has_many :reviews, dependent: :destroy
  has_many :menu_items, through: :reviews

  # create a model that only shows order where is_ordered false
  # call on an instance of a user and check if that user.id
  # use "where" to see if is_ordered is false

  def current_order_item
    order = Order.where("user_id = ? and is_ordered = false", self.id)
    if (order.length > 0)
      order[0].order_menus
    else
      []
    end 
  end
end
