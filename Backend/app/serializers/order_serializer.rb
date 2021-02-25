class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_number
  has_one :user
  has_one :menu_item
end
