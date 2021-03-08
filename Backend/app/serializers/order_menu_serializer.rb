class OrderMenuSerializer < ActiveModel::Serializer
  attributes :id, :menu_item, :order_id
  has_one :menu_item
end
